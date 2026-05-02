import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:libras_dictionary/api_service.dart';
import 'package:libras_dictionary/models.dart';

import 'api_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late ApiService apiService;
  late MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    apiService = ApiService(client: mockClient);
  });

  group('ApiService Tests', () {
    test('search returns empty list when all sources fail or return nothing', () async {
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('[]', 200));

      final results = await apiService.search('teste');

      expect(results, isEmpty);
    });

    test('search fetches from INES successfully', () async {
      final mockJsResponse = '''
      var palavras = [
        {
          "palavra": "Teste",
          "descricao": "Descrição do teste",
          "video": "video_teste.mp4",
          "image": "imagem_teste.jpg",
          "exemplo": "Exemplo",
          "libras": "Libras"
        }
      ];
      ''';

      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((Invocation inv) async {
            Uri uri = inv.positionalArguments[0] as Uri;
            if (uri.host.contains('ines')) {
              return http.Response(mockJsResponse, 200);
            }
            return http.Response('[]', 200);
          });

      final results = await apiService.search('teste', source: 'INES');

      expect(results, isNotEmpty);
      expect(results.length, 1);
      expect(results.first.title, 'Teste');
      expect(results.first.source, 'INES');
      expect(results.first.videoUrl, 'https://dicionario.ines.gov.br/public/media/palavras/videos/video_teste.mp4');
      expect(results.first.imageUrl, 'https://dicionario.ines.gov.br/public/media/palavras/images/imagem_teste.jpg');
      expect(results.first.description, 'Descrição do teste');
      expect(results.first.exemplo, 'Exemplo');
      expect(results.first.libras, 'Libras');
    });

    test('search fetches from UFV successfully', () async {
      final mockListResponse = '''
      <div>
        <a href="https://sistemas.cead.ufv.br/capes/dicionario/teste/">
          <h4>Teste</h4>
        </a>
      </div>
      ''';

      final mockDetailResponse = '''
      <div>
        <video src="http://ufv.br/video_teste.mp4"></video>
      </div>
      ''';

      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((Invocation inv) async {
            Uri uri = inv.positionalArguments[0] as Uri;
            if (uri.host.contains('ufv.br')) {
              if (uri.path.contains('teste')) {
                return http.Response(mockDetailResponse, 200);
              }
              return http.Response(mockListResponse, 200);
            }
            return http.Response('[]', 200);
          });

      final results = await apiService.search('teste', source: 'UFV');

      expect(results, isNotEmpty);
      expect(results.length, 1);
      expect(results.first.title, 'Teste');
      expect(results.first.source, 'UFV');
      expect(results.first.videoUrl, 'http://ufv.br/video_teste.mp4');
    });

    test('search fetches from LibrasAcademicaUFF successfully', () async {
      final mockResponse = '''
      [
        {
          "title": {"rendered": "Teste"},
          "content": {"rendered": "Conteúdo com a palavra teste e um <video src=\\"http://uff.br/video.mp4\\"></video>"},
          "excerpt": {"rendered": "Resumo"}
        }
      ]
      ''';

      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((Invocation inv) async {
            Uri uri = inv.positionalArguments[0] as Uri;
            if (uri.host.contains('librasacademica.uff.br')) {
              return http.Response(mockResponse, 200);
            }
            return http.Response('[]', 200);
          });

      final results = await apiService.search('teste', source: 'LibrasAcademicaUFF');

      expect(results, isNotEmpty);
      expect(results.length, 1);
      expect(results.first.title, 'Teste');
      expect(results.first.source, 'LibrasAcademicaUFF');
      expect(results.first.videoUrl, 'http://uff.br/video.mp4');
      expect(results.first.description, 'Resumo');
    });

    test('search fetches from SpreadTheSign successfully', () async {
      final mockListResponse = '''
      <div>
        <video src="https://media.spreadthesign.com/video/mp4/test1.mp4"></video>
        <span class="flag-icon flag-icon-br bordered"></span> Teste

        <div class="search-result-title">
          <a href="/pt.br/word/123/teste/"> Teste
        </div>
      </div>
      ''';

      final mockDetailResponse = '''
      <div>
        <video src="https://media.spreadthesign.com/video/mp4/test2.mp4"></video>
      </div>
      ''';

      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((Invocation inv) async {
            Uri uri = inv.positionalArguments[0] as Uri;
            if (uri.host.contains('spreadthesign.com')) {
              if (uri.path.contains('/word/')) {
                return http.Response(mockDetailResponse, 200);
              }
              return http.Response(mockListResponse, 200);
            }
            return http.Response('[]', 200);
          });

      final results = await apiService.search('teste', source: 'SpreadTheSign');

      expect(results, isNotEmpty);
      expect(results.length, 2);
      expect(results[0].title, 'Teste');
      expect(results[0].source, 'SpreadTheSign');
      expect(results[0].videoUrl, 'https://media.spreadthesign.com/video/mp4/test1.mp4');

      expect(results[1].title, 'Teste');
      expect(results[1].source, 'SpreadTheSign');
      expect(results[1].videoUrl, 'https://media.spreadthesign.com/video/mp4/test2.mp4');
    });

    test('search handles HTTP errors gracefully', () async {
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Internal Server Error', 500));

      final results = await apiService.search('teste');

      expect(results, isEmpty);
    });

    test('search fetches from RedeSurdos successfully', () async {
      final mockResponse = '''
      [
        {
          "title": {"rendered": "Teste"},
          "content": {"rendered": "Conteúdo com a palavra teste e um <iframe src=\\"https://www.youtube.com/embed/dQw4w9WgXcQ\\"></iframe>"},
          "excerpt": {"rendered": "Resumo"}
        }
      ]
      ''';

      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((Invocation inv) async {
            Uri uri = inv.positionalArguments[0] as Uri;
            if (uri.host.contains('redesurdosce')) {
              return http.Response(mockResponse, 200);
            }
            return http.Response('[]', 200);
          });

      final results = await apiService.search('teste', source: 'RedeSurdos');

      expect(results, isNotEmpty);
      expect(results.length, 1);
      expect(results.first.title, 'Teste');
      expect(results.first.source, 'RedeSurdos');
      expect(results.first.youtubeId, 'dQw4w9WgXcQ');
      expect(results.first.description, 'Resumo');
    });
  });
}
