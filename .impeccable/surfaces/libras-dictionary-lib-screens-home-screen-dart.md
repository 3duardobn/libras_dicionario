---
version: 1
slug: "libras-dictionary-lib-screens-home-screen-dart"
primary_target: "libras_dictionary/lib/screens/home_screen.dart"
related_targets: []
---

# Surface brief — Home (busca de sinais)

Scope: tela principal do Dicionário Libras — busca multi-fonte, resultados, abas de fonte, favoritos e configurações.
Mode: Operate. Success: o usuário acha o sinal rápido e assiste o vídeo sem fricção.

## Direction contract

THESIS: O app é um manual de referência de software aberto — cada fonte é uma divisória em cor plena e o sinal encontrado é lido numa folha de acetato sobre ela. Recusa o default da categoria (cartões suaves + bottom bar genérico + azul institucional): aqui o catálogo de fontes é a estrutura.

OWN-WORLD: Paleta por divisória — cada fonte (INES, RedeSurdos, UFV, LibrasAcadêmica, SpreadTheSign, YouTube) tem sua cor de seção em plena intensidade; o resultado lido flutua como acetato leitoso sobre a divisória. Tipografia de um único tamanho com hierarquia por peso/caixa/régua; cabeçalhos em grotesca na grade, códigos de fonte em monoespaçada. Estado é dobra da folha (nunca só cor): selecionado = furo (punch hole), pendente = meia-dobra, erro = errata slip vermelhão. Três temas: Claro, Escuro e Alto Contraste (estado por marcas, não por cor).

STORY: O visitante entende que cada cor é uma fonte, digita a palavra, e o sinal abre como placa sobre a divisória da fonte, com o código em monoespaçada e o furo de seleção. Sabe de onde veio cada resultado e pode comparar entre fontes.

FIRST VIEWPORT: Campo de busca no topo como cabeçalho do manual; trilho de abas em degrau (uma por fonte + Favoritos/Recentes) na borda inferior; resultados em folhas numeradas; ao abrir, o vídeo ocupa a placa full-bleed sobre a cor da fonte. Touch targets ≥48dp, Material 3 (bottom nav, back), type scale do Material.

FORM: manual-acetate-tab-board (challenger rw-manual-acetate-tab-board; seed key 08158c38; vencedor por escolha do usuário).

FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance
