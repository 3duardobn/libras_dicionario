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
  List<DictItem> _results = [];
  bool _isLoading = false;

  void _performSearch() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;

    setState(() {
      _isLoading = true;
      _results = [];
    });

    final results = await _apiService.search(query);

    setState(() {
      _results = results;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: CircularProgressIndicator(),
            ),
          if (!_isLoading && _results.isEmpty && _searchController.text.isNotEmpty)
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text('Nenhum resultado encontrado.'),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: _results.length,
              itemBuilder: (context, index) {
                return DictionaryItemCard(item: _results[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DictionaryItemCard extends StatelessWidget {
  final DictItem item;
  const DictionaryItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            color: item.source == 'INES' ? Colors.blue.shade100 : Colors.green.shade100,
            child: Text(
              '${item.title} (${item.source})',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          if (item.description != null && item.description!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Html(data: item.description!),
            ),
          if (item.youtubeId != null && item.youtubeId!.isNotEmpty)
            YoutubePlayerWidget(youtubeId: item.youtubeId!),
          if (item.videoUrl != null && item.videoUrl!.isNotEmpty)
            ChewieVideoWidget(videoUrl: item.videoUrl!),
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
        autoPlay: false,
        mute: false,
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

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      looping: false,
      aspectRatio: _videoPlayerController.value.aspectRatio,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
