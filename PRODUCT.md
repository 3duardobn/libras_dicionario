# Product

<!-- impeccable:product-schema 1 -->

## Platform

android

## Users

Primary: Eduardo and other Portuguese speakers learning Libras as a second language. Secondary: Deaf and hard-of-hearing users who use Libras as their first language and may reference the app for academic or cross-source sign comparison. All are mobile-first, searching in quick bursts while studying or in context.

## Product Purpose

A mobile dictionary that searches multiple Libras sign sources simultaneously and surfaces videos, descriptions, and links in one place. Exists because no single source covers everything; the app aggregates INES, RedeSurdos, UFV, LibrasAcademicaUFF, SpreadTheSign, and YouTube into a unified search. Success means finding the sign you need, fast, without opening five browser tabs.

## Positioning

An honest aggregation layer over the institutional sources: every result is one tap from the video, cross-checked across sources, and the tool itself does not pretend to be an institution. No single source covers all signs; the app's mechanism is simultaneous multi-source search with word matching, source filters, autocomplete from the INES vocabulary (~5.800 words), and a cached INES vocabulary for partial offline use.

## Operating Context

Mobile-first, used in quick bursts while studying or in a real conversation context. Touch-driven; users may be holding the phone in one hand. Videos play inline; only one plays at a time. The app must still work when individual sources fail — failed sources must not take down the search.

## Capabilities and Constraints

- Multi-source simultaneous search with whole-word matching and per-source filters (INES, RedeSurdos, UFV, Libras Acadêmica UFF, SpreadTheSign, YouTube).
- Native mp4 playback or the official embedded YouTube player; one video at a time.
- Autocomplete from the INES vocabulary (~5.800 words).
- Favorites and recent searches persisted on device; optional offline caching of the INES vocabulary.
- Light/dark theme, sign sharing, optional YouTube search button.
- Flutter with pure Dart; GPL-3.0-only; Android application id `dev.edbn.libras_dictionary` (version 1.0.6+5).

## Brand Commitments

Name "Dicionário Libras" (Libras Dictionary). Warm, accessible, community voice; direct and unpretentious, supportive without being patronizing. The user confirms the color palette and overall visual direction have changed and no longer match the incumbent DESIGN.md — the visual world is to be renewed.

## Evidence on Hand

- README.md documents features, sources, and the app structure.
- DESIGN.md (incumbent visual record, outdated per confirmed change) and `.impeccable/design.json` describe the current blue palette (`#1565C0` family) and per-source identity colors.
- `libras_dictionary/lib/theme.dart` contains the implemented color tokens.
- No invented testimonials, benchmarks, or press; none should be fabricated.

## Product Principles

1. **Content before chrome.** The sign video or image is the product. Every UI element exists to surface it faster or understand it better. Nothing decorates.
2. **Visual-first, no audio dependency.** Primary users may be Deaf or HoH. No affordances rely on sound. Status, feedback, and state are always communicated visually.
3. **Community, not institution.** Warmth over authority. The app aggregates sources that are often cold and academic; the wrapper should feel like a helpful person, not a government database.
4. **Honest utility.** No SaaS theater. No empty states with confetti. No micro-animations that serve ego. Every interaction has a job to do.
5. **Large targets, high contrast.** Deaf/HoH users skew toward visual precision and motor accessibility expectations. Touch targets ≥48dp, contrast ≥4.5:1 minimum, WCAG AAA where feasible.

## Accessibility & Inclusion

Deaf/HoH specific focus: visual-first, no reliance on audio cues, large touch targets (≥48dp), strong contrast ratios. WCAG AA minimum, AAA where achievable. No flashing content. All video controls visible without hover.