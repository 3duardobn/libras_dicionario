---
target: /home/eduardo/projetos/personal/libras/libras_dicionario/libras_dictionary/src/libras_dictionary/main.cljd
total_score: 22
p0_count: 0
p1_count: 2
timestamp: 2026-05-22T16-35-37Z
slug: libras-dictionary-src-libras-dictionary-main-cljd
---
# Critique Report: libras-dictionary-src-libras-dictionary-main-cljd

#### Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 2 | Fixed 3s splash screen; blank screen during load; YouTube player completely ignores user interactions (IgnorePointer). |
| 2 | Match System / Real World | 3 | Plain Portuguese terminology, but "Glosa" is unexplained for novice learners. |
| 3 | User Control and Freedom | 2 | Fixed splash screen cannot be skipped; no clear button in search field; YouTube player has no playback controls. |
| 4 | Consistency and Standards | 2 | Settings uses checkboxes without source colors instead of SwitchListTile; filter chips manually draw checkmarks in code violating DESIGN.md. |
| 5 | Error Prevention | 2 | Empty search query is not validated or blocked; YouTube player has no error handling or feedback on failure. |
| 6 | Recognition Rather Than Recall | 3 | Active filters are visible above search results; no search history is retained. |
| 7 | Flexibility and Efficiency | 3 | YouTube FAB and automatic YouTube fallback are good shortcuts, but search history is missing. |
| 8 | Aesthetic and Minimalist Design | 2 | Solid red FAB violates the "Source-Only Rule"; splash screen is visually heavy and slow. |
| 9 | Error Recovery | 1 | Empty search results show a completely blank page with no instruction, empty state message, or YouTube fallback nudge. |
| 10 | Help and Documentation | 2 | Legal credits and GitHub link exist in options; no inline help or usage guides. |
| **Total** | | **22/40** | **Acceptable** |

#### Anti-Patterns Verdict

**LLM Assessment**: The interface has a clean, functional base but suffers from several visual and behavior anti-patterns that degrade the user experience. The use of a bright red FAB violates the "Source-Only Rule" (restricting source colors to card headers only). Crucially, wrapping the YouTube player in `mat/IgnorePointer` is a severe interaction blocker, preventing users from controlling the very video they searched for. 

**Deterministic scan**: Deterministic scan unavailable (bundled detector engine not found on system).

**Visual overlays**: No reliable user-visible overlay is available (browser injection skipped because browser automation is not available in this session).

#### Overall Impression
The app successfully brings together multiple academic and community Libras sources into a clean layout. However, it currently functions more like a static database reader than a dynamic educational tool. Restoring control to video playback and providing a meaningful empty state are the highest-leverage opportunities to make the app feel responsive and usable.

#### What's Working
1. **Source-Colored Headers**: The full-bleed colored card headers clearly identify the data source (INES, UFV, etc.) at a glance, honoring the "Soft Signal" design guideline.
2. **Inline Expansion**: Expanding search results inline within the list instead of navigating to a new details screen keeps the user in their context and minimizes transition delay.

#### Priority Issues

- **[P1] YouTube Video Interaction Blocked**:
  - **Why it matters**: Wrapping the YouTube player in `mat/IgnorePointer` disables all touches. Users cannot pause, seek, or replay the videos, which makes studying fast or detailed Libras movements incredibly difficult.
  - **Fix**: Remove `mat/IgnorePointer`, allow controls, and implement custom interactive controllers as specified in `DESIGN.md`.
  - **Suggested command**: `/impeccable polish`
- **[P1] Empty Result State is a Blank Screen**:
  - **Why it matters**: If search returns no results, the user sees a blank screen. They don't know if the search is loading, finished, or if the app is frozen.
  - **Fix**: Implement an illustrative or icon-based empty state with a message like "Nenhum sinal encontrado" and a manual button to trigger a YouTube search.
  - **Suggested command**: `/impeccable onboard`
- **[P2] Hardcoded 3-Second Splash Screen Delay**:
  - **Why it matters**: Forcing a 3-second wait on every launch frustrates power users.
  - **Fix**: Transition to the home page immediately after settings and preferences are loaded.
  - **Suggested command**: `/impeccable optimize`
- **[P2] Settings & Filter Chips Visual Inconsistencies**:
  - **Why it matters**: The settings screen uses standard checkboxes rather than `SwitchListTile` with color cues. Additionally, filter chips add a checkmark icon in code, violating the "No selected checkmark" ban.
  - **Fix**: Use `SwitchListTile` in options with leading color indicators, remove manual checkmarks from filter chips, and apply 20% opacity backgrounds to inactive chips.
  - **Suggested command**: `/impeccable layout`
- **[P2] FAB Violates the Source-Only Rule**:
  - **Why it matters**: The FAB uses YouTube red, violating the rule that source colors are restricted only to card headers.
  - **Fix**: Style the FAB using the primary Community Blue (`#1565C0`) or a theme-appropriate neutral.
  - **Suggested command**: `/impeccable colorize`

#### Persona Red Flags

- **Alex (Impatient Power User)**: Forced to wait for a fixed 3-second splash screen. Cannot pause or scrub through sign videos to fast-forward.
- **Jordan (First-Timer)**: Empty search results show a completely blank page. Technical jargon like "Glosa" is not explained, leaving Jordan unsure of how to read the translation field.
- **Casey (Distracted Mobile User)**: Search inputs are placed at the top of the screen, away from the thumb zone. Settings list tiles have no visual color indicators, making scanning for specific sources slower.

#### Minor Observations
- The FAB has a tooltip "Buscar no YouTube", but its visual design (a play button) suggests it will play a video rather than trigger a search.
- When results are loading, the list clears immediately, leaving the screen blank. Keeping the old results until the new ones load (or showing placeholders) would feel smoother.

#### Questions to Consider
- What if the search bar was positioned at the bottom of the screen (or close to it) to make it easier for single-handed mobile users?
- Could we add a small tooltip or info icon next to "Tradução Libras (Glosa)" to explain what Glosa is for new learners?
