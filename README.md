# Libras Dicionário

App mobile para pesquisar sinais de Libras (Língua Brasileira de Sinais) em múltiplas fontes simultaneamente.

Fiz isso para me ajudar no estudo de Libras. Desenvolvido com vibe coding — Claude, Jules e Gemini como assistentes. Sei o básico de Clojure e Flutter, o suficiente para acompanhar o que as IAs estão fazendo.

Entrego do jeito que está. Use com a sua conta em risco.

## Funcionalidades

- Pesquisa em português com correspondência por palavra inteira
- Múltiplas fontes consultadas em paralelo
- Tema claro/escuro com persistência
- Reprodução de vídeo inline
- Fallback automático para YouTube quando não há resultados

## Fontes

| Fonte | Instituição |
|-------|-------------|
| INES | Instituto Nacional de Educação de Surdos |
| RedeSurdos | Universidade Federal do Ceará |
| UFV | Universidade Federal de Viçosa |
| LibrasAcadêmica UFF | Universidade Federal Fluminense |
| SpreadTheSign | Projeto internacional de sinais |
| YouTube | Fallback automático opcional |

## Tecnologia

- **[ClojureDart](https://github.com/tensegritics/clojuredart)** + Flutter — migrado de Dart puro
- Fonte principal: `libras_dictionary/src/libras_dictionary/`
  - `main.cljd` — UI e estado global
  - `api.cljd` — integração com as fontes
  - `models.cljd` — modelo de dados

## Como rodar

Requer [Clojure CLI](https://clojure.org/guides/install_clojure) e Flutter SDK.

```bash
cd libras_dictionary

# Compilar ClojureDart para Dart
clj -M:cljd compile

# Rodar no dispositivo/emulador
flutter run
```

Para gerar o APK:

```bash
cd libras_dictionary
./build_apk.sh
```

## Licença

Domínio público — CC0 1.0. Veja [LICENSE](LICENSE).
