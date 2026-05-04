import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models.dart';
import 'api_service.dart';

// Notificador global para o tema
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Carrega a preferência de tema salva
  final prefs = await SharedPreferences.getInstance();
  final isDark = prefs.getBool('isDark') ?? false;
  themeNotifier.value = isDark ? ThemeMode.dark : ThemeMode.light;
  
  runApp(const LibrasDictionaryApp());
}

class LibrasDictionaryApp extends StatelessWidget {
  const LibrasDictionaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          title: 'Dicionário Libras',
          debugShowCheckedModeBanner: false,
          themeMode: currentMode,
          // Tema Claro
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.light),
            useMaterial3: true,
            brightness: Brightness.light,
          ),
          // Tema Escuro
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark),
            useMaterial3: true,
            brightness: Brightness.dark,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DictionaryHomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF121212) : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container Circular que você pediu
            Container(
              padding: const EdgeInsets.all(40), // Espaço interno para o ícone
              decoration: BoxDecoration(
                color: isDark ? Colors.black : Colors.blue.shade600, // Círculo Preto ou Azul
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
                border: Border.all(
                  color: isDark ? Colors.white24 : Colors.blue.shade300,
                  width: 2,
                ),
              ),
              child: SvgPicture.asset(
                'assets/icone_logo.svg',
                width: 140,
                fit: BoxFit.contain, 
                // Ícone sempre Branco sobre o círculo colorido/preto
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(height: 48),
            Text(
              'Dicionário Libras',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : Colors.blue.shade900,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 45,
              height: 45,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(
                  isDark ? Colors.blue.shade400 : Colors.blue.shade800,
                ),
              ),
            ),
          ],
        ),
      ),
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
  List<DictItem> _allSearchResults = [];
  bool _isLoading = false;
  bool _isYoutubeSearch = false;
  Set<String> _activeFilters = {'Ambos'};
  String _lastSearchQuery = '';
  List<String> _enabledSources = ['INES', 'UFV', 'RedeSurdos', 'LibrasAcademicaUFF', 'SpreadTheSign'];
  bool _autoYoutubeSearch = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _enabledSources = prefs.getStringList('enabled_sources') ?? 
          ['INES', 'UFV', 'RedeSurdos', 'LibrasAcademicaUFF', 'SpreadTheSign'];
      _autoYoutubeSearch = prefs.getBool('auto_youtube_search') ?? false;
      _activeFilters = {'Ambos'};
    });
  }

  List<DictItem> get _filteredResults {
    if (_isYoutubeSearch) return _allSearchResults;
    if (_activeFilters.contains('Ambos')) {
      return _allSearchResults.where((item) => _enabledSources.contains(item.source)).toList();
    }
    return _allSearchResults.where((item) => _activeFilters.contains(item.source)).toList();
  }

  void _onFilterChanged(String filter, bool selected) {
    setState(() {
      if (filter == 'Ambos') {
        _activeFilters = {'Ambos'};
      } else {
        _activeFilters.remove('Ambos');
        if (selected) {
          _activeFilters.add(filter);
        } else {
          _activeFilters.remove(filter);
        }

        // Se selecionou todas as fontes habilitadas, volta para "Ambos"
        bool allSelected = true;
        for (var src in _enabledSources) {
          if (!_activeFilters.contains(src)) {
            allSelected = false;
            break;
          }
        }
        
        if (allSelected || _activeFilters.isEmpty) {
          _activeFilters = {'Ambos'};
        }
      }
    });
  }

  void _performSearch() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;

    setState(() {
      _isLoading = true;
      _isYoutubeSearch = false;
      _allSearchResults = [];
      _lastSearchQuery = query;
    });

    final results = await _apiService.search(query, source: 'Ambos');

    if (results.isEmpty && _autoYoutubeSearch) {
      _performYoutubeSearch();
      return;
    }

    setState(() {
      _allSearchResults = results;
      _isLoading = false;
    });
  }

  void _performYoutubeSearch() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;

    setState(() {
      _isLoading = true;
      _isYoutubeSearch = true;
      _allSearchResults = [];
      _lastSearchQuery = query;
    });

    final results = await _apiService.searchYouTube(query);

    setState(() {
      _allSearchResults = results;
      _isLoading = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
      _allSearchResults = [];
      _lastSearchQuery = '';
      _isYoutubeSearch = false;
      _isLoading = false;
    });
  }

  // Alterna o tema e salva a preferência
  void _toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    if (themeNotifier.value == ThemeMode.light) {
      themeNotifier.value = ThemeMode.dark;
      await prefs.setBool('isDark', true);
    } else {
      themeNotifier.value = ThemeMode.light;
      await prefs.setBool('isDark', false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final displayResults = _filteredResults;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Dicionário Libras'),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            tooltip: 'Alternar Tema',
            onPressed: _toggleTheme,
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
              _loadSettings();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _performYoutubeSearch,
        backgroundColor: Colors.red,
        child: const Icon(Icons.play_circle_filled, color: Colors.white, size: 36),
        tooltip: 'Buscar no YouTube',
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
                    decoration: InputDecoration(
                      labelText: 'Pesquisar palavra (Português)',
                      border: const OutlineInputBorder(),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: _clearSearch,
                            )
                          : null,
                    ),
                    onChanged: (text) {
                      setState(() {}); 
                    },
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
          if (!_isYoutubeSearch)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: [
                  FilterChip(
                    label: AnimatedSize(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (_activeFilters.contains('Ambos'))
                            const Padding(
                              padding: EdgeInsets.only(right: 4.0),
                              child: Icon(Icons.check, size: 14),
                            ),
                          const Text('Todos', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    selected: _activeFilters.contains('Ambos'),
                    onSelected: (val) => _onFilterChanged('Ambos', val),
                    showCheckmark: false,
                    elevation: 1,
                    pressElevation: 2,
                    visualDensity: VisualDensity.compact,
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  ),
                  ..._enabledSources.map((source) {
                    String displayLabel = source;
                    if (source == 'RedeSurdos') displayLabel = 'Rede Surdos';
                    if (source == 'LibrasAcademicaUFF') displayLabel = 'Libras Acadêmica';
                    
                    return FilterChip(
                      label: AnimatedSize(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (_activeFilters.contains(source))
                              const Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Icon(Icons.check, size: 14),
                              ),
                            Text(displayLabel, style: const TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      selected: _activeFilters.contains(source),
                      onSelected: (val) => _onFilterChanged(source, val),
                      showCheckmark: false,
                      selectedColor: getSourceColor(source).withOpacity(0.2),
                      checkmarkColor: getSourceColor(source),
                      elevation: 1,
                      pressElevation: 2,
                      visualDensity: VisualDensity.compact,
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    );
                  }).toList(),
                ],
              ),
            ),
          const SizedBox(height: 16),
          if (_isLoading)
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  _isYoutubeSearch 
                    ? const Icon(Icons.movie_filter, size: 50, color: Colors.red)
                    : const Icon(Icons.menu_book, size: 50, color: Colors.blue),
                  const SizedBox(height: 16),
                  const CircularProgressIndicator(),
                  const SizedBox(height: 8),
                  Text(_isYoutubeSearch ? 'Buscando no YouTube...' : 'Buscando nos dicionários...'),
                ],
              ),
            ),
          if (!_isLoading && displayResults.isEmpty && _lastSearchQuery.isNotEmpty)
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text('Nenhum resultado encontrado para esta seleção.'),
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

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> _enabledSources = [];
  bool _autoYoutubeSearch = false;
  final Map<String, String> _sourceLabels = {
    'INES': 'INES (Dicionário INES)',
    'UFV': 'UFV (Universidade Federal de Viçosa)',
    'RedeSurdos': 'Rede Surdos (UFC)',
    'LibrasAcademicaUFF': 'Libras Acadêmica (UFF)',
    'SpreadTheSign': 'SpreadTheSign',
  };

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _enabledSources = prefs.getStringList('enabled_sources') ?? _sourceLabels.keys.toList();
      _autoYoutubeSearch = prefs.getBool('auto_youtube_search') ?? false;
    });
  }

  _toggleSource(String source, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (value) {
        if (!_enabledSources.contains(source)) _enabledSources.add(source);
      } else {
        _enabledSources.remove(source);
      }
    });
    await prefs.setStringList('enabled_sources', _enabledSources);
  }

  _toggleAutoYoutube(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _autoYoutubeSearch = value;
    });
    await prefs.setBool('auto_youtube_search', value);
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opções')),
      body: ListView(
        children: [
          const ListTile(
            title: Text('Configurações de Busca', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SwitchListTile(
            title: const Text('Busca automática no YouTube'),
            subtitle: const Text('Se não encontrar nada nos dicionários, busca no YouTube'),
            value: _autoYoutubeSearch,
            onChanged: _toggleAutoYoutube,
          ),
          const Divider(),
          const ListTile(
            title: Text('Fontes de Pesquisa', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Ative ou desative as fontes de palavras'),
          ),
          ..._sourceLabels.keys.map((source) {
            return CheckboxListTile(
              title: Text(_sourceLabels[source]!),
              value: _enabledSources.contains(source),
              onChanged: (val) => _toggleSource(source, val ?? false),
            );
          }).toList(),
          const Divider(),
          const ListTile(
            title: Text('Direitos Reservados', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Créditos e fontes de dados'),
          ),
          _buildSourceCredit(
            'INES',
            'Instituto Nacional de Educação de Surdos',
            'http://dicionario.ines.gov.br/',
            'Os direitos autorais dos vídeos e imagens pertencem ao INES. O uso neste aplicativo é para fins educacionais e de acessibilidade.',
          ),
          _buildSourceCredit(
            'Rede Surdos',
            'Universidade Federal do Ceará (UFC)',
            'https://redesurdosce.ufc.br/',
            'Conteúdo disponibilizado pela Rede Surdos da UFC. Todos os direitos reservados aos produtores originais.',
          ),
          _buildSourceCredit(
            'UFV',
            'Universidade Federal de Viçosa',
            'https://sistemas.cead.ufv.br/capes/dicionario/',
            'Dicionário de Libras da UFV. Conteúdo protegido por direitos autorais da instituição.',
          ),
          _buildSourceCredit(
            'Libras Acadêmica',
            'Universidade Federal Fluminense (UFF)',
            'https://librasacademica.uff.br/',
            'Glossário de Libras Acadêmica da UFF. Direitos reservados à UFF.',
          ),
          _buildSourceCredit(
            'SpreadTheSign',
            'European Sign Language Centre',
            'https://www.spreadthesign.com/',
            'SpreadTheSign é um dicionário internacional. Os direitos pertencem ao European Sign Language Centre.',
          ),
          _buildSourceCredit(
            'Ícone de Libras',
            'Wikimedia Commons',
            'https://en.wikipedia.org/wiki/File:Brazilian_Sign_Language_Symbol.svg',
            'O símbolo da Língua Brasileira de Sinais usado neste projeto está disponível sob a licença Creative Commons CC0 1.0 Universal Public Domain Dedication.',
          ),
          const Divider(),
          const ListTile(
            title: Text('Licença do Projeto', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Este projeto é código aberto sob a licença GNU General Public License v3.0.'),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () => _launchUrl('https://github.com/3duardobn/libras_dicionario'),
                  child: const Text(
                    'Repositório no GitHub',
                    style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const Divider(),
          const ListTile(
            title: Text('Ajuda e Suporte', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: const Icon(Icons.contact_support),
            title: const Text('Suporte'),
            onTap: () => _launchUrl('https://edbn.dev/suporte'),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Contato'),
            onTap: () => _launchUrl('https://edbn.dev/contato'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSourceCredit(String name, String org, String url, String copyright) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(org, style: const TextStyle(fontSize: 12)),
          InkWell(
            onTap: () => _launchUrl(url),
            child: Text(url, style: const TextStyle(color: Colors.blue, fontSize: 12)),
          ),
          Text(copyright, style: const TextStyle(fontSize: 11, fontStyle: FontStyle.italic)),
          const SizedBox(height: 8),
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
  static const _channel = MethodChannel('com.example.libras_dictionary/share');

  Future<void> _share(String text, String subject) async {
    try {
      await _channel.invokeMethod('share', {'text': text, 'subject': subject});
    } on PlatformException catch (e) {
      debugPrint("Failed to share: '${e.message}'.");
    }
  }

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
              color: getSourceColor(widget.item.source),
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
                  if (widget.item.link != null)
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.white),
                      onPressed: () {
                        _share(
                          'Veja este sinal de Libras para "${widget.item.title}": ${widget.item.link}',
                          'Sinal de Libras: ${widget.item.title}',
                        );
                      },
                      tooltip: 'Compartilhar sinal',
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
  bool _isReplaying = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.youtubeId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: false, 
        hideControls: true,             // Esconde os controles nativos do YouTube
        hideThumbnail: true,            // Esconde a thumb de carregamento
        controlsVisibleAtStart: false,  // Não mostra controles ao carregar
        disableDragSeek: true,
      ),
    )..addListener(_onPlayerStateChange);
  }

  void _onPlayerStateChange() {
    if (!_controller.value.isReady) return;

    final position = _controller.value.position;
    final duration = _controller.value.metaData.duration;

    // Volta pro começo ~300ms ANTES de acabar para evitar a tela de "final" do YouTube (que pisca a UI)
    if (duration.inMilliseconds > 0 && position.inMilliseconds >= duration.inMilliseconds - 300 && !_isReplaying) {
      _isReplaying = true;
      _controller.seekTo(Duration.zero);
      Future.delayed(const Duration(milliseconds: 600), () {
        if (mounted) _isReplaying = false;
      });
    } else if (_controller.value.playerState == PlayerState.ended && !_isReplaying) {
      // Fallback de segurança
      _isReplaying = true;
      _controller.seekTo(Duration.zero);
      _controller.play();
      Future.delayed(const Duration(milliseconds: 600), () {
        if (mounted) _isReplaying = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer( // Impede o usuário de clicar no logo do YT ou pausar o vídeo na tela
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: false, // Remove a barra de progresso do Flutter
        bottomActions: const [],           // Limpa ações inferiores
        topActions: const [],              // Limpa ações superiores
      ),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_onPlayerStateChange);
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
      await _videoPlayerController.setVolume(0.0);
      
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        looping: true,
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
            'Erro ao carregar o vídeo.',
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

Color getSourceColor(String source) {
  switch (source) {
    case 'INES':
      return Colors.blue.shade600;
    case 'RedeSurdos':
      return Colors.green.shade600;
    case 'UFV':
      return Colors.red.shade600;
    case 'LibrasAcademicaUFF':
      return Colors.purple.shade600;
    case 'SpreadTheSign':
      return Colors.orange.shade600;
    case 'YouTube':
      return Colors.red.shade800;
    default:
      return Colors.grey.shade600;
  }
}
