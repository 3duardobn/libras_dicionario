# Dicionário Libras

[![CI](https://github.com/3duardobn/libras_dicionario/actions/workflows/ci.yml/badge.svg)](https://github.com/3duardobn/libras_dicionario/actions/workflows/ci.yml)
[![Licença: CC0](https://img.shields.io/badge/licen%C3%A7a-CC0%201.0-blue.svg)](LICENSE)

App mobile para pesquisar sinais de Libras (Língua Brasileira de Sinais) em
múltiplas fontes simultaneamente. Digite uma palavra em português e veja o
vídeo do sinal correspondente, com descrição, exemplos e glosa quando
disponíveis.

Fiz isso para me ajudar no estudo de Libras. Desenvolvido com vibe coding —
Claude, Jules e Gemini como assistentes. Sei o básico de Flutter, o suficiente
para acompanhar o que as IAs estão fazendo. Entrego do jeito que está; use por
sua conta e risco.

## Funcionalidades

- **Busca em várias fontes ao mesmo tempo**, com correspondência por palavra
  inteira e filtros por fonte
- **Vídeos dos sinais no próprio app** — mp4 nativo ou player oficial
  incorporado do YouTube; apenas um vídeo toca por vez
- **Autocompletar** com base no vocabulário do INES (5.800+ palavras)
- **Favoritos** e **buscas recentes** persistidos no aparelho
- **Funciona parcialmente offline** — o vocabulário do INES fica em cache local
- **Tema claro/escuro**, compartilhamento de sinais e botão opcional de busca
  no YouTube
- Fontes que falham não derrubam a busca — o app avisa e mostra o resto

## Fontes

| Fonte | Instituição |
|-------|-------------|
| INES | Instituto Nacional de Educação de Surdos |
| Rede Surdos | Universidade Federal do Ceará (UFC) |
| UFV | Universidade Federal de Viçosa |
| Libras Acadêmica | Universidade Federal Fluminense (UFF) |
| SpreadTheSign | European Sign Language Centre |

Os direitos dos vídeos e conteúdos pertencem às instituições de origem; o uso
neste app é para fins educacionais e de acessibilidade (créditos completos na
tela de Configurações).

## Tecnologia

**[Flutter](https://flutter.dev) com Dart puro** — código simples, sem
toolchains adicionais. Basta o Flutter SDK para desenvolver, testar e compilar.

Código-fonte em `libras_dictionary/lib/`:

| Arquivo | Responsabilidade |
|---------|------------------|
| `main.dart` | Tela principal, busca, navegação, estado de tema |
| `state.dart` | Estado global, ações, coordenação de players |
| `api.dart` | Integração com as fontes (APIs REST e scraping) |
| `player.dart` | Players de vídeo (mp4 e YouTube iframe) |
| `card.dart` | Card de resultado |
| `settings_screen.dart` | Tela de configurações |
| `strings.dart` | Textos da interface |
| `models.dart` | Modelo de dados |

Testes em `libras_dictionary/test/`.

## Como rodar

Requer apenas o [Flutter SDK](https://docs.flutter.dev/get-started/install).

```bash
cd libras_dictionary
flutter pub get
flutter run        # rodar no dispositivo/emulador
```

Testes:

```bash
flutter test
```

## Build e publicação

- **APK local**: `./build_apk.sh` (dentro de `libras_dictionary/`)
- **Release completo** (assinatura, Play Store, F-Droid):
  [libras_dictionary/docs/RELEASE.md](libras_dictionary/docs/RELEASE.md)
- **Política de privacidade**:
  [libras_dictionary/docs/privacy-policy.md](libras_dictionary/docs/privacy-policy.md)
- Tags `v*` disparam o CI que publica APKs e App Bundle no GitHub Releases

## Licença

Domínio público — [CC0 1.0](LICENSE). O símbolo de Libras usado no ícone vem
do [Wikimedia Commons](https://en.wikipedia.org/wiki/File:Brazilian_Sign_Language_Symbol.svg) (CC0).
