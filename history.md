# Histórico de Desenvolvimento

## 2026-08-22 — Versão Web (branch `feature/web` → `main`)

### Objetivo

Adicionar uma versão web estática do Dicionário de Libras, sem backend,
hospedável no Cloudflare Pages.

### Análise de viabilidade (verificada com requisições reais)

| Fonte | Web sem backend | Motivo |
|---|---|---|
| INES (principal) | ✅ funciona | `palavras.js` começa com `var palavras = [...]` → carregável via tag `<script>`, imune a CORS |
| RedeSurdos | ✅ funciona | WP REST já envia `Access-Control-Allow-Origin` para qualquer origem |
| LibrasAcademicaUFF | ✅ funciona | idem |
| UFV | ❌ oculta na web | HTML scraping sem header CORS |
| SpreadTheSign | ❌ oculta na web | sem CORS + browser proíbe setar `User-Agent` |

Vídeos e imagens (`<video>`/`<img>`) não sofrem CORS — tocam normalmente.

### Implementação

- **Scaffold web**: `flutter create --platforms=web .`; `index.html` em pt-BR;
  linha `libras_dictionary/web/` removida do `.gitignore`
- **`lib/platform/`** — abstrações por import condicional:
  - `ines_cache_io.dart` (File + path_provider) ↔ `ines_cache_web.dart`
    (injeção `<script>` do `palavras.js`, leitura de `window.palavras`
    via `dart:js_interop`, ~5.826 palavras) + stub
  - `share_mobile.dart` (MethodChannel) ↔ `share_web.dart`
    (`navigator.share` + fallback clipboard com SnackBar) + stub
  - `debug_http_io.dart` ↔ `debug_http_stub.dart` (HttpOverrides só fora da web)
- **`api.dart`**: cache do INES via interface condicional; `dart:io` removido
- **`state.dart`**: `allSources` dependente de `kIsWeb` (UFV/SpreadTheSign
  ocultas na web); prefs salvas filtradas contra fontes disponíveis;
  `appNavigatorKey` global
- **`settings_screen.dart`**: lista de fontes vem de `st.allSources`
- **Frame web** (`main.dart` `_WebFrame`): em viewports > 700px o app flutua
  como painel centralizado (máx. 560px) com margens nas 4 extremidades,
  cantos arredondados, borda e sombra; janelas estreitas continuam full-bleed
- **CI**: `.github/workflows/deploy-web.yml` — analyze → test →
  `flutter build web --release` → `wrangler pages deploy` (Cloudflare Pages)

### Bug corrigido

Busca ignorava variantes numeradas do INES (`diferente1`, `diferente2`):
o `\b...\b` do regex não considera fronteira entre letra e dígito.
Corrigido com `\d*` opcional (`api.dart wordBoundRegex`) — vale para todas
as fontes; falsos positivos ("diferentemente", "casarão") seguem excluídos.

### Validação

- `flutter analyze`: limpo · `flutter test`: 36/36 · `flutter build web --release`: ✓
- Smoke test em Chromium headless (playwright-core): app renderiza, busca
  "casa" retorna CASA (INES) primeiro + resultados RedeSurdos, chips com
  apenas as 3 fontes suportadas, frame centralizado confirmado em screenshot

### Commit / merge

- Commit único `e6af9e6` `feat(web): add Flutter Web build with Cloudflare Pages deploy`
- Merge fast-forward para `main`

### Pendente

1. `git push` (main 1 commit à frente do origin)
2. Secrets no GitHub: `CLOUDFLARE_API_TOKEN` e `CLOUDFLARE_ACCOUNT_ID`
   (token com permissão *Cloudflare Pages: Edit*)
3. Push dispara o deploy automático para o Cloudflare Pages
4. Futuro: proxy CORS (ex.: Cloudflare Worker) para reintroduzir
   UFV/SpreadTheSign na web
