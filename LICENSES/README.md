# LICENSES

Documentação de licenças das dependências do **Dicionário Libras**,
destinada à verificação de conformidade FOSS (ex.: inclusão no F-Droid).

O app é Flutter/Dart puro. Todas as dependências de código vêm do
[pub.dev](https://pub.dev) (público) e do SDK do Flutter. Não há CocoaPods,
npm, Maven manual nem outros gerenciadores de dependência no projeto.

## Conteúdo

| Arquivo | Conteúdo |
|---------|----------|
| [`dependency-tree.txt`](dependency-tree.txt) | Árvore completa: todas as dependências resolvidas com versão e licença |
| [`texts/BSD-3-Clause.txt`](texts/BSD-3-Clause.txt) | Texto da licença BSD-3-Clause |
| [`texts/MIT.txt`](texts/MIT.txt) | Texto da licença MIT |
| [`texts/Apache-2.0.txt`](texts/Apache-2.0.txt) | Texto da licença Apache-2.0 |
| [`texts/MPL-2.0.txt`](texts/MPL-2.0.txt) | Texto da licença MPL-2.0 |
| [`texts/Flutter-SDK-BSD-3-Clause.txt`](texts/Flutter-SDK-BSD-3-Clause.txt) | Licença do SDK do Flutter |

## Resumo

- **BSD-3-Clause** — maioria (inclusive todos os pacotes oficiais do
  Flutter/dart-lang)
- **MIT** — chewie, flutter_html, flutter_svg, cupertino_icons, image,
  petitparser, xml, yaml, etc.
- **Apache-2.0** — mockito, material_color_utilities, clock, fake_async
- **MPL-2.0** — dbus
- **Flutter SDK** — BSD-3-Clause

100% das dependências são FOSS. Nenhuma dependência com licença restritiva
(GPL/AGPL, "non-commercial", comercial) foi encontrada.

## Metodologia

1. Resolução real via `flutter pub get` → `libras_dictionary/pubspec.lock`.
2. Para cada pacote, o arquivo `LICENSE` correspondente foi lido diretamente
   do cache local do pub (`~/.pub-cache/hosted/pub.dev/<pacote>-<versão>/`),
   garantindo que a versão auditada é exatamente a embarcada.
3. Pacotes do SDK (`flutter`, `flutter_test`, `flutter_web_plugins`,
   `sky_engine`) apontam para a licença do Flutter SDK.

Para regenerar a árvore após atualizar dependências:

```bash
cd libras_dictionary
flutter pub get
# re-gerar LICENSES/dependency-tree.txt a partir do pubspec.lock
```

## Observações

- `clock` e `diacritic` estão listados no pub.dev como MIT; o arquivo
  `LICENSE` no cache é o texto BSD-3-Clause. Ambas as licenças são FOSS.
- As ferramentas de build (AGP, Kotlin Gradle Plugin, Gradle, Flutter Gradle
  Plugin) não são embarcadas no APK; estão listadas no `dependency-tree.txt`
  a título de completude.