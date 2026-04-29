import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'models.dart';
import 'api_service.dart';

void main() {
  runApp(const LibrasDictionaryApp());
}

class LibrasDictionaryApp extends StatelessWidget {
  const LibrasDictionaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicionário Libras',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const DictionaryHomePage(),
    );
  }
}

class DictionaryHomePage extends StatefulWidget {
  const DictionaryHomePage({super.key});

  @override
  State<DictionaryHomePage> createState() => _DictionaryHomePageState();
}

class _DictionaryHomePageState extends State<DictionaryHomePage> {
  final ApiService _apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();
  List<DictItem> _allSearchResults = []; // Armazena todos os resultados da última busca
  bool _isLoading = false;
  String _selectedSource = 'Ambos';
  String _lastSearchQuery = '';

  // Filtra os resultados locais com base na fonte selecionada
  List<DictItem> get _filteredResults {
    if (_selectedSource == 'Ambos') return _allSearchResults;
    return _allSearchResults.where((item) => item.source == _selectedSource).toList();
  }

  void _performSearch() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;

    setState(() {
      _isLoading = true;
      _allSearchResults = [];
      _lastSearchQuery = query;
    });

    // Sempre busca com "Ambos" para ter o cache completo localmente,
    // a menos que você queira restringir a busca na API por performance.
    // Mas para o comportamento solicitado, buscamos tudo e filtramos na UI.
    final results = await _apiService.search(query, source: 'Ambos');

    setState(() {
      _allSearchResults = results;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayResults = _filteredResults;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicionário Libras'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      labelText: 'Pesquisar palavra (Português)',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _performSearch(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _performSearch,
                  child: const Text('Buscar'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SegmentedButton<String>(
              segments: const [
                ButtonSegment<String>(
                  value: 'Ambos',
                  label: Text('Ambos'),
                ),
                ButtonSegment<String>(
                  value: 'RedeSurdos',
                  label: Text('Rede Surdos'),
                ),
                ButtonSegment<String>(
                  value: 'INES',
                  label: Text('INES'),
                ),
              ],
              selected: <String>{_selectedSource},
              onSelectionChanged: (Set<String> newSelection) {
                setState(() {
                  _selectedSource = newSelection.first;
                });
                
                // Se o campo de texto mudou em relação à última busca, refaz a busca.
                // Caso contrário, apenas o getter `_filteredResults` atualizará a lista na tela.
                if (_searchController.text.trim() != _lastSearchQuery && _searchController.text.trim().isNotEmpty) {
                  _performSearch();
                }
              },
            ),
          ),
          const SizedBox(height: 16),
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: CircularProgressIndicator(),
            ),
          if (!_isLoading && displayResults.isEmpty && _lastSearchQuery.isNotEmpty)
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text('Nenhum resultado encontrado para este filtro.'),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: displayResults.length,
              itemBuilder: (context, index) {
                return DictionaryItemCard(item: displayResults[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DictionaryItemCard extends StatefulWidget {
  final DictItem item;
  const DictionaryItemCard({super.key, required this.item});

  @override
  State<DictionaryItemCard> createState() => _DictionaryItemCardState();
}

class _DictionaryItemCardState extends State<DictionaryItemCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              color: widget.item.source == 'INES' ? Colors.blue.shade600 : Colors.green.shade600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '${widget.item.title} (${widget.item.source})',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded) ...[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.item.description != null && widget.item.description!.isNotEmpty) ...[
                    const Text('Descrição:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 4),
                    Html(
                      data: widget.item.description!,
                      style: {
                        "body": Style(
                          margin: Margins.zero,
                          padding: HtmlPaddings.zero,
                          fontSize: FontSize(16.0),
                        ),
                      },
                    ),
                    const SizedBox(height: 12),
                  ],
                  if (widget.item.exemplo != null && widget.item.exemplo!.isNotEmpty) ...[
                    const Text('Exemplo:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 4),
                    Html(
                      data: widget.item.exemplo!,
                      style: {
                        "body": Style(
                          margin: Margins.zero,
                          padding: HtmlPaddings.zero,
                          fontSize: FontSize(16.0),
                          fontStyle: FontStyle.italic,
                        ),
                      },
                    ),
                    const SizedBox(height: 12),
                  ],
                  if (widget.item.libras != null && widget.item.libras!.isNotEmpty) ...[
                    const Text('Tradução Libras (Glosa):', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Text(
                        widget.item.libras!,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ],
              ),
            ),
            if (widget.item.youtubeId != null && widget.item.youtubeId!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: YoutubePlayerWidget(youtubeId: widget.item.youtubeId!),
              ),
            if (widget.item.imageUrl != null && widget.item.imageUrl!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.network(
                  widget.item.imageUrl!,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => const SizedBox(),
                ),
              ),
            if (widget.item.videoUrl != null && widget.item.videoUrl!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ChewieVideoWidget(videoUrl: widget.item.videoUrl!),
              ),
          ],
        ],
      ),
    );
  }
}

class YoutubePlayerWidget extends StatefulWidget {
  final String youtubeId;
  const YoutubePlayerWidget({super.key, required this.youtubeId});

  @override
  State<YoutubePlayerWidget> createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.youtubeId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ChewieVideoWidget extends StatefulWidget {
  final String videoUrl;
  const ChewieVideoWidget({super.key, required this.videoUrl});

  @override
  State<ChewieVideoWidget> createState() => _ChewieVideoWidgetState();
}

class _ChewieVideoWidgetState extends State<ChewieVideoWidget> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    setState(() {
      _hasError = false;
      _chewieController = null;
    });
    try {
      // Adicionando um timestamp para evitar cache e problemas de range no servidor do INES
      final uri = Uri.parse(widget.videoUrl);
      final finalUrl = uri.replace(queryParameters: {
        ...uri.queryParameters,
        'v': DateTime.now().millisecondsSinceEpoch.toString(),
      }).toString();

      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(finalUrl),
        httpHeaders: {
          'User-Agent': 'Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36',
          'Accept': '*/*',
        },
      );
      await _videoPlayerController.initialize();
      await _videoPlayerController.setVolume(0.0); // INES clips are mostly visual
      
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        looping: true, // Acts like a GIF
        aspectRatio: _videoPlayerController.value.aspectRatio,
        showControls: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      );
      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      debugPrint('Erro ao inicializar vídeo: $e');
      if (mounted) {
        setState(() {
          _hasError = true;
        });
      }
    }
  }

  @override
  void didUpdateWidget(ChewieVideoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoUrl != widget.videoUrl) {
      _videoPlayerController.dispose();
      _chewieController?.dispose();
      _initPlayer();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Erro ao carregar o vídeo. Pode ser um problema de rede ou o vídeo não está mais disponível.',
            style: TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (_chewieController != null && _videoPlayerController.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _videoPlayerController.value.aspectRatio,
        child: Chewie(controller: _chewieController!),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(child: CircularProgressIndicator()),
      );
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }
}
