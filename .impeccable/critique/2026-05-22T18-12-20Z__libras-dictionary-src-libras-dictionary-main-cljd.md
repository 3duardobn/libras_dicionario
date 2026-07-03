---
target: libras_dictionary/src/libras_dictionary/main.cljd
total_score: 21
p0_count: 0
p1_count: 2
timestamp: 2026-05-22T18-12-20Z
slug: libras-dictionary-src-libras-dictionary-main-cljd
---
## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 2 | Silent network failures; no error state distinguishable from "no results" |
| 2 | Match System / Real World | 4 | Natural Portuguese throughout; source names match institutions |
| 3 | User Control and Freedom | 2 | No clear-search button; no cancel-in-progress; YouTube mode has no explicit exit |
| 4 | Consistency and Standards | 3 | Consistent card/chip vocabulary; "Opções" vs implied "Configurações" in settings title |
| 5 | Error Prevention | 1 | No TextField clear; no textInputAction.search; no visible enabled-sources indicator on home screen |
| 6 | Recognition Rather Than Recall | 3 | Filter chips surface sources; FAB purpose opaque behind tooltip only |
| 7 | Flexibility and Efficiency | 1 | No search history; no quick source toggle from home; no keyboard shortcuts |
| 8 | Aesthetic and Minimalist Design | 3 | Clean cards; source color system purposeful; filter chips add noise before first search |
| 9 | Error Recovery | 1 | Failed searches look identical to zero results; no retry affordance |
| 10 | Help and Documentation | 1 | No first-run guidance; empty-state YouTube hint is the only in-context help |
| **Total** | | **21/40** | **Acceptable — significant improvements needed** |

---

## Anti-Patterns Verdict

**LLM assessment**: The interface does not read as AI-generated slop. The two-layer color system (restrained surface + semantic source palette via full-bleed header bands) is the distinguishing design move — it is intentional and executed correctly. No gradient text, no identical card grids, no side-stripe borders, no hero metrics. The source color vocabulary is consistent between card headers, filter chips, and settings toggles.

Where it falls into category reflex: the MaterialApp uses `ColorScheme.fromSeed(.seedColor: Colors.blue)` — the most generic possible Material 3 starting point. The tonal surface that generates is close to but not identical to the documented Community Blue `#1565C0`. The splash screen is a plain circle-logo-spinner on white, completely expected for a mobile dictionary app. No personality at the entry point.

**Deterministic scan**: CLI detector not found (`detect.mjs` missing). Scan unavailable.

**Browser visualization**: Not attempted (no browser automation in this session).

---

## Overall Impression

The core information architecture is sound: search → colored result cards → expand for detail. The source color system is the app's best idea and it's executed well. The critical gap is trust: when a search fails silently, users cannot distinguish a network error from a genuinely missing word. For a reference tool where users need to trust the results, this is a fundamental problem. The secondary gap is discoverability of the YouTube fallback — it's hidden behind a FAB with an opaque icon.

---

## What's Working

1. **Source color header bands**: Full-bleed colored bands (not side stripes) give each result instant visual identity. The color vocabulary is consistent across cards, filter chips, and settings circles. This is the app's strongest design decision.

2. **Progressive disclosure via card expand**: Hiding description/video/example behind tap-to-expand keeps the results list scannable. The expand chevron is visible without hover. Appropriate for mobile.

3. **Empty state guidance**: The empty state correctly distinguishes "haven't searched yet" from "searched and found nothing," and adds a contextual YouTube hint only when relevant. Honest and useful.

---

## Priority Issues

**[P1] Silent search failure indistinguishable from no results**
- **What**: `perform-search!` and `perform-youtube-search!` catch all exceptions, log to console, set `:is-loading false` — no `:error` state ever set. Network failure produces an empty results list identical to "word not found."
- **Why it matters**: Users trust the dictionary. A silent failure teaches them the word doesn't exist in any source. This is false and erodes the app's core value proposition.
- **Fix**: Add `:error-message` to `app-state`. Catch block sets it. Home screen renders a distinct error state: "Não foi possível completar a busca. Verifique sua conexão e tente novamente." with a retry button.
- **Suggested command**: `/impeccable harden`

**[P1] FAB purpose is undiscoverable on mobile**
- **What**: The FAB uses `Icons.play_circle_filled` with tooltip "Buscar no YouTube." On mobile, tooltips require long-press. The icon communicates "play" not "search YouTube." No visible label.
- **Why it matters**: The YouTube fallback is a key feature (there's even an auto-search setting for it). If users never discover the FAB, they abandon when dictionary results are empty.
- **Fix**: Use `FloatingActionButton.extended` with icon + "YouTube" label when no results are shown. Or add a secondary button in the empty-state view: "Buscar no YouTube" as a TextButton below the hint text.
- **Suggested command**: `/impeccable clarify`

**[P2] Splash screen is dead code**
- **What**: `splash-screen` function defined at line 603 but `main-app` sets `.home (home-page)` directly (line 662). The splash never renders.
- **Why it matters**: Dead code misleads future maintenance. More importantly, the brief settings load in `main()` runs before `runApp` — the app goes straight to home with no transition. On slow devices this may produce a white flash.
- **Fix**: Either wire up `splash-screen` as `.home` in `main-app` (for the entry animation) or delete the function.
- **Suggested command**: `/impeccable harden`

**[P2] No search-clear affordance**
- **What**: `TextField` has no `suffixIcon` clear button. Users must manually select-all-and-delete to reset.
- **Why it matters**: Dictionary apps are iterative: search a word, compare results, search a related word. Friction on the reset action breaks the search loop.
- **Fix**: Add `suffixIcon` to `InputDecoration`: show `Icons.clear` when `:search-query` is non-blank; on tap, clear the atom and the controller.
- **Suggested command**: `/impeccable polish`

**[P2] Video auto-plays on card expand**
- **What**: `YoutubePlayerFlags.autoPlay: true` — video starts the moment the card is expanded.
- **Why it matters**: Primary users include Deaf/HoH who may have phone audio playing to hearing colleagues, or may simply want to read the description first. Involuntary autoplay breaks the principle "no affordance relies on sound." Also violates user control.
- **Fix**: Set `.autoPlay false`. User initiates playback. Already have loop logic in the listener; that logic only needs to fire after first play.
- **Suggested command**: `/impeccable harden`

---

## Persona Red Flags

**Casey (Distracted Mobile User)** — primary use case: quick lookup while studying or in conversation.

- Search field occupies full width with an adjacent button, but no submit action on the keyboard (`textInputAction` not set to `TextInputAction.search`). On Android, keyboard shows generic "return" key. Casey submits the form, app doesn't search; she taps the button separately. One unnecessary tap per search.
- FAB is at default bottom-right, reachable by thumb, but unlabeled. Casey taps it accidentally while scrolling and triggers an unwanted YouTube search. No undo.
- Filter chips appear before any search, filling vertical space Casey doesn't need yet. She has to scroll past them to start.
- When returning to the app after an interruption, `:search-query` atom may differ from what's displayed in the `TextField` (depends on Flutter widget lifecycle). State may not survive background-kill.

**Sam (Accessibility-Dependent User)** — Deaf/HoH user, visual-first, may use large text or accessibility settings.

- `mat.Colors/white` used as splash background and in some text contexts: pure white (#FFFFFF) instead of the documented warm tint (#FFFBFE). Minor contrast difference, but signals unintentional choices.
- Color is the sole differentiator for source identity in filter chips (selected state uses source color). Chip labels include source names, which saves it, but the label formatting is small (13sp with `.visualDensity compact`). At large-text settings, chip layout may break.
- No `Semantics` wrappers on custom components. `FilterChip` and `IconButton` have semantic defaults, but the card expand interaction is on a bare `InkWell` with no `semanticsLabel`. Screen readers announce the card's text content but not the expand/collapse action.
- Video controls are visible without hover (YouTube player shows controls), which is correct. But auto-play (see P2 above) may produce unexpected audio in shared-speaker environments.

**Libras Learner (Project-Specific)** — Eduardo's profile: Portuguese speaker actively studying Libras, searching while in class or watching interpreter videos, needs to quickly compare how different sources sign the same word.

- Cannot compare two cards side by side; must expand, memorize, collapse, expand next. No visual diff between sources for the same sign.
- Filter chips allow narrowing to one source but there's no quick "show only INES and UFV for this word" mode without tapping two chips. With "Ambos" active by default, the learner sees all sources mixed without ordering by relevance.
- `Tradução Libras (Glosa)` section renders in monospace in a grey box. This is correct domain presentation. No issue here.
- No way to favorite or bookmark a result. Mobile learners in class need to return to a specific card. Searching again is the only path.

---

## Minor Observations

- `mat.Colors/blue` used for link text (lines 138, 446 in `main.cljd`) instead of Community Blue `0xFF1565C0`. Links will render as Material default blue, slightly different from the app's brand color.
- Settings screen title is "Opções" but the source-enabled toggles section header is "Fontes de Pesquisa" — both are fine in isolation, but the top-level navigation label (AppBar) should probably match the settings icon tooltip convention. "Configurações" is more standard Portuguese mobile convention.
- Filter chips are sorted via `(sort (seq enabled-sources))` — Clojure set iteration order is unspecified; `sort` produces lexicographic order. Chips appear as: INES, LibrasAcademicaUFF, RedeSurdos, SpreadTheSign, UFV. Alphabetical but not usage-prioritized. INES is the reference institution and appears first, which is incidentally correct.
- Splash screen background uses `mat.Colors/white` (pure white) in light mode; DESIGN.md documents Warm Light Surface `#FFFBFE`. Tiny deviation but consistent with the overall slip toward Material defaults.
- `build-source-credit` renders link text with `mat.Colors/blue` and `TextDecoration.underline`. Underlined links are screen-reader friendly, good. Brand color consistency issue as above.

---

## Questions to Consider

- What if network errors were surfaced honestly? The app's "honest utility" principle means users deserve to know when a source failed vs. when their word genuinely has no results.
- Does the YouTube FAB need to be a floating action button at all? A "Buscar no YouTube" text button appearing contextually in the empty state might be more discoverable and less likely to trigger accidentally.
- What would a "quick compare" mode look like? The learner persona's core job is comparing how INES signs a word vs. how UFV signs it. The current UX requires sequential expand/collapse. Is there a more direct path?
