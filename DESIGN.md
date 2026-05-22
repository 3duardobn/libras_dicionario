---
name: Dicionário Libras
description: Multi-source Brazilian Sign Language dictionary, warm and community-forward
colors:
  primary: "#1565C0"
  primary-brand: "#1E88E5"
  surface-light: "#FFFBFE"
  surface-dark: "#1C1B1F"
  on-source: "#FFFFFF"
  neutral-text: "#1C1B1F"
  neutral-muted: "#757575"
  source-ines: "#1E88E5"
  source-redesurdos: "#43A047"
  source-ufv: "#E53935"
  source-librasacademica: "#8E24AA"
  source-spreadthesign: "#FB8C00"
  source-youtube: "#C62828"
  source-fallback: "#757575"
typography:
  headline:
    fontFamily: "Roboto, system-ui, sans-serif"
    fontSize: "20sp"
    fontWeight: 700
    lineHeight: 1.2
  body:
    fontFamily: "Roboto, system-ui, sans-serif"
    fontSize: "16sp"
    fontWeight: 400
    lineHeight: 1.5
  label:
    fontFamily: "Roboto, system-ui, sans-serif"
    fontSize: "14sp"
    fontWeight: 500
    lineHeight: 1.4
  caption:
    fontFamily: "Roboto, system-ui, sans-serif"
    fontSize: "12sp"
    fontWeight: 400
    lineHeight: 1.4
rounded:
  card: "12px"
  input: "4px"
  chip: "8px"
spacing:
  card-h: "16px"
  card-v: "8px"
  content: "16px"
  gap-sm: "4px"
  gap-md: "12px"
components:
  result-card:
    backgroundColor: "{colors.surface-light}"
    rounded: "{rounded.card}"
    padding: "0px"
  source-header:
    textColor: "{colors.on-source}"
    padding: "12px 16px"
  search-button:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-source}"
    rounded: "{rounded.input}"
    padding: "16px 24px"
  search-button-hover:
    backgroundColor: "{colors.primary-brand}"
    textColor: "{colors.on-source}"
    rounded: "{rounded.input}"
    padding: "16px 24px"
  icon-button:
    textColor: "{colors.primary}"
    size: "48px"
---

# Design System: Dicionário Libras

## 1. Overview

**Creative North Star: "The Living Dictionary"**

This is a reference tool with warmth and community at its core. Not a portal, not a SaaS dashboard — more like a well-organized notebook shared among people who care about Libras, built on top of institutions that care too little about presentation. The interface acknowledges its sources visually (through color-coded headers) without letting them compete with the content that matters: the sign itself, the description, the video.

The system runs on two layers. The primary surface is restrained: tinted Material 3 neutrals with a single blue accent, focused and calm. The source layer is deliberate: each institution carries a distinct hue, functioning as a soft identity badge rather than a dominant chromatic statement. Together, they let users navigate five different databases without feeling like five different apps opened at once.

Visual clarity is non-negotiable here. Primary users may be Deaf or hard of hearing, and the interface must communicate everything visually without relying on sound, hover states, or subtle micro-copy. Touch targets are generous. Contrast is high. State is always explicit.

**Key Characteristics:**
- Two-layer color system: restrained primary surface, semantic source palette
- Material 3 foundation with genuine warmth, not out-of-the-box generic
- Visual-first: every state, every source, every status communicated through shape and color
- Honest density: shows results without theatrical loading or empty-state animations
- Light-primary, dark-capable: used in varied lighting from outdoor to home study

## 2. Colors: The Source Palette

The base surface is restrained; the source colors are the expressive layer. Every result card announces its origin through a colored header strip — not a side stripe, a full-bleed band. These colors are soft signals, not billboards: they identify without competing.

### Primary
- **Community Blue** (`#1565C0`): Primary actions, current selection, interactive affordances. Material 3 blue seed, deep enough to pass AAA contrast on light surfaces.
- **Brand Blue** (`#1E88E5`): App icon background, INES source identity. Slightly lighter than primary; used as the brand anchor and INES color simultaneously because INES is the reference institution.

### Neutral
- **Warm Light Surface** (`#FFFBFE`): App background (light mode). Material 3 surface with a near-imperceptible warm tint — not pure white.
- **Deep Dark Surface** (`#1C1B1F`): App background (dark mode). Near-black with a warm bias, not cold charcoal.
- **Body Text** (`#1C1B1F`): Primary readable text on light surfaces. Same value as dark surface for one-token simplicity.
- **Muted Gray** (`#757575`): Secondary text, SpreadTheSign source (its neutral position in the institutional hierarchy is intentional), disabled states.
- **White on Source** (`#FFFFFF`): Text on all source color headers. Full white passes AAA contrast on every source hue.

### Source Palette (Semantic, not Decorative)

Each source color is a soft identity signal. They appear exclusively in result card headers and nowhere else in the interface.

- **INES Blue** (`#1E88E5`, `oklch(58% 0.20 258)`): Instituto Nacional de Educação de Surdos. The reference institution, so it shares the brand blue.
- **RedeSurdos Green** (`#43A047`, `oklch(59% 0.17 142)`): UFC community network.
- **UFV Red** (`#E53935`, `oklch(52% 0.22 25)`): Universidade Federal de Viçosa.
- **LibrasAcadêmica Purple** (`#8E24AA`, `oklch(42% 0.23 305)`): UFF academic dictionary.
- **SpreadTheSign Orange** (`#FB8C00`, `oklch(69% 0.19 52)`): International sign project.
- **YouTube Dark Red** (`#C62828`, `oklch(42% 0.20 25)`): Fallback video search.
- **Fallback Gray** (`#757575`): Any source not in the above list.

**The Source-Only Rule.** Source colors appear exclusively in card headers as background fills. They never appear as button colors, link colors, icon fills, or decorative accents on the base surface. Their scarcity is their legibility.

**The Soft Signal Rule.** When rendering source headers, prefer `shade600` values over `shade800` or `shade400` — warm enough to read, restrained enough not to dominate. Full-saturation primaries are forbidden in this role.

## 3. Typography

**Body Font:** Roboto, system-ui, sans-serif (Material 3 default; no custom loading required)

**Character:** Roboto in Material 3 weight/size pairings reads as neutral authority — competent and calm, not clinical. The humanist details at text sizes prevent it from feeling bureaucratic. This system earns its warmth through spacing and color, not from the typeface itself.

*Note: font sizes are in Flutter scale-independent pixels (sp). At 1x density, 1sp = 1px.*

### Hierarchy
- **Headline** (700 weight, 20sp, 1.2 line-height): Card titles — the sign name and source. Displayed in white on source-colored backgrounds. Contrast minimum 4.5:1 required on every source hue.
- **Body** (400 weight, 16sp, 1.5 line-height): Description text, exemplo, all readable content inside expanded cards. Max line-length guidance: wrap before 65 characters in portrait layout.
- **Label** (700 weight, 16sp, 1.4 line-height): Section labels like "Descrição:" inside expanded card content. Same size as body, distinguished by weight alone.
- **Caption** (400 weight, 12sp, 1.4 line-height): Metadata, links, secondary context.

**The Weight-Not-Size Rule.** Inside a card, description labels and description body share the same 16sp size and differ only in weight (700 vs 400). Never introduce a third size level inside a single card. Hierarchy through weight; sizes reserved for cross-component jumps.

## 4. Elevation

This system is layered. Cards always float above the surface; depth signals that a result is a discrete thing you found, not a row in a list. Material 3 elevation 3 (`box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24)`) is the constant baseline for result cards.

The base surface is flat. AppBar, search bar area, and the list scroll surface carry no shadow; cards emerge from that flatness. Expanded card content does not re-elevate — the parent card already holds the visual weight.

### Shadow Vocabulary
- **Result Card** (elevation 3): `0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24)` — always present, not state-dependent.
- **Flat** (elevation 0): AppBar, search bar, list background. No shadow; the card layer reads against it.

**The Always-Layered Rule.** Cards float at all times, regardless of state. Do not flatten cards on scroll, on press, or at rest. The layer is structural, not interactive feedback.

## 5. Components

### Result Cards

The primary content unit. Each result is a card with a source-colored header band (full width, not a left stripe) and expandable content below.

- **Shape:** Gently rounded corners (12px radius), clipped content (antiAlias), so the source color header respects the card shape at top corners.
- **Background:** Warm Light Surface (`#FFFBFE`) in light mode; appropriate dark surface in dark mode.
- **Margin:** 16px horizontal, 8px vertical — cards breathe but stack clearly.
- **Elevation:** Always at elevation 3. Never flat.
- **Header:** Full-bleed band at the card top. Source color fills the background. White text (`#FFFFFF`) carries the sign title + source name in 700 weight 20sp. Expand/collapse icon (white) at the trailing edge.
- **Expanded body:** 16px padding all sides. Description label (700/16sp) followed by description body (400/16sp). 12px gap between label and body. 12px gap between content sections.
- **Tap target:** Full card taps to expand. Minimum tap area covers the full header (≥48dp height enforced).

### Source Header

The colored band at the top of each result card. This is the component; the card is the container.

- **Background:** Source-specific color (see Source Palette above).
- **Text:** White (`#FFFFFF`), 700 weight, 20sp. Format: `[Sign Name] ([Source Name])`.
- **Trailing icon:** Expand/collapse chevron, white, same optical weight as title.
- **Padding:** 12dp vertical, 16dp horizontal.
- **No side stripes.** The source color is a full-bleed band or nothing. Partial left borders are prohibited.

### Search Bar

- **Input field:** Outlined style (`OutlineInputBorder`), 4px radius, label "Pesquisar (Português)" floats on focus.
- **Companion button:** "Buscar" ElevatedButton at trailing end. Primary blue fill, white text, same height as the field.
- **Container padding:** 16px all sides.
- **Loading state:** LinearProgressIndicator below the search bar, full width, no spinner inside the results area.

### App Navigation (AppBar)

- **Title:** "Dicionário Libras", default Material titleLarge style.
- **Actions:** Single icon button (theme toggle: light_mode / dark_mode icon). 48dp tap target.
- **No back button in default state.** Single-screen tool; no navigation stack shown.

### Settings (Source Toggles)

Source enable/disable controls live in settings (via SettingsScreen). Each source has a SwitchListTile with the source name and its color as a leading visual cue.

- **Toggle:** Material Switch, primary-colored track when on.
- **List item height:** Minimum 56dp for accessible tap area.

### Video Player

Embedded inside expanded result cards when a `youtube-id` or `video-url` is present. The container is a content slot, not a decorative element.

- **Container:** Full width of expanded card body, 200dp fixed height, black background (`#000000`). Black is correct here: it is the universally expected canvas for video, not a design choice that can be swapped.
- **Play state:** YouTube player (via `youtube_player_flutter`) fills the container; controls appear on tap and hide after inactivity. All controls are visible without hover, keyboard-accessible.
- **No-video fallback:** When a `youtube-id` exists but the player has not loaded, show a centered white label on black. No spinner; no animation. The text communicates state.
- **Elevation:** The video container is inside the card body. It does not re-elevate. The card's elevation 3 already holds it.
- **Source indicator:** YouTube Dark Red (`#C62828`) is the source color for YouTube results. The card header already identifies origin; do not add a second YouTube logo or badge inside the player container.

### Source Toggle Chips

Filter chips in the settings screen (and optionally as a horizontal scroller above results). Each chip represents one source and toggles its inclusion in searches.

- **Active state:** Source-specific background color (shade600 from Source Palette), white text (`#FFFFFF`), 8px radius. Same color vocabulary as card headers — visual language consistent across the app.
- **Inactive state:** Muted Gray (`#757575`) background tinted at 20% opacity over the surface, Body Text (`#1C1B1F`) label, 8px radius. Clearly off; not invisible.
- **Label:** Source short name only ("INES", "UFV", "RedeSurdos"). Not an icon; not a full institution name.
- **Minimum tap target:** 48dp height, 48dp width minimum. Chips can grow wider; never shorter.
- **Spacing:** 8dp gap between chips in a row. Do not compress spacing to fit more chips per row; wrap to next row instead.
- **No selected checkmark.** The background color change is the affordance. A checkmark icon on a colored chip adds visual noise without information.

## 6. Do's and Don'ts

### Do:
- **Do** use source colors exclusively as full-bleed card header backgrounds. They are identity, not decoration.
- **Do** keep card headers at full source-color saturation (shade600) — they need to be identifiable at a glance but should be the only saturated element on the card.
- **Do** maintain white (`#FFFFFF`) text on all source color backgrounds. Verify 4.5:1 minimum contrast ratio against every source hue; all current shade600 values pass.
- **Do** use elevation 3 for all result cards always — the layered depth is structural and communicates discrete-result semantics.
- **Do** size every interactive element at ≥48dp height and width. Primary users include Deaf/HoH users who rely on visual precision and may use this app in motion.
- **Do** communicate all state changes visually: expanded vs collapsed, loading vs loaded, source enabled vs disabled. No state is audio-only or hover-only.
- **Do** prefer weight contrast over size contrast inside a single card (700 vs 400, same 16sp).
- **Do** clip card content to the card radius so the source header color respects the rounded corners.

### Don't:
- **Don't** use source colors anywhere outside result card headers. Not as button colors, not as icon tints, not as link colors on the base surface.
- **Don't** use border-left (or border-right) greater than 1px as a colored stripe to indicate source. The source color is a full-bleed band or it is nothing.
- **Don't** build anything that looks like a cold government portal. INES's own website is the canonical anti-reference: dense, unsorted, zero hierarchy. This app is the opposite.
- **Don't** apply generic SaaS patterns: blue-purple gradients, hero metrics, performative card grids with identical icon + heading + copy blocks.
- **Don't** use heavy gamification. No streaks, no badges, no progress bars measuring "Libras mastery." This is a dictionary, not an app that monetizes your attention.
- **Don't** replicate medical or clinical aesthetics: over-whitened surfaces, clinical type, zero warmth. The community warmth is a design choice, not a styling accident.
- **Don't** use gradient text (`background-clip: text` with a gradient). Source identity is communicated through solid background color, not gradient treatments.
- **Don't** flatten cards on scroll or on press. Cards are always at elevation 3. Removing elevation mid-interaction is confusing.
- **Don't** spin in the middle of a result list. The LinearProgressIndicator below the search bar is the loading signal; nothing else moves while content loads.
- **Don't** invent affordances for standard actions. The search field, expand/collapse chevron, and settings icon follow Material patterns. Standard affordances have zero learning curve.
