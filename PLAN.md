# PLAN.md — Plano do Projeto Dicionário de Libras

## Visão Geral
Este projeto foi migrado com sucesso de ClojureDart para **Flutter Dart 3 puro e idiomático**, visando tornar o projeto verdadeiramente livre, acessível, fácil de manter e aberto a contribuições da comunidade de código aberto.

## Objetivos Arquiteturais

### 1. Migração e Simplificação da Base de Código
- [x] Remover dependências do ClojureDart (`cljd-out`).
- [x] Estruturar o projeto em arquitetura limpa em camadas:
  - `lib/theme.dart`: Design Tokens e Tema Material 3.
  - `lib/screens/`: Telas principais (Home, Splash, Opções, Favoritos).
  - `lib/state.dart`: Gerenciamento de estado reativo com `ChangeNotifier`.
  - `lib/api.dart`: Conectores com APIs institucionais (INES, RedeSurdos, UFV, UFF, SpreadTheSign).
  - `lib/player.dart`: Integradores de vídeo (YouTube iFrame e MP4 Chewie).
  - `lib/card.dart`: Cards adaptativos de exibição de sinais.

### 2. Design e Experiência do Usuário (UX/UI)
- [x] Implementar Design System fiel ao `DESIGN.md` com cores institucionais semânticas (**INES**: `#1E88E5`, **RedeSurdos**: `#43A047`, **UFV**: `#E53935`, **LibrasAcadêmica**: `#8E24AA`, **SpreadTheSign**: `#FB8C00`).
- [x] Criar Splash Screen animada vetorial (`assets/icone_logo.svg`).
- [x] Otimizar largura dos cards (margem reduzida para 10px) e altura útil dos vídeos (proporção 14:9).
- [x] Substituir botão flutuante (FAB) poluído por Card do YouTube condicional exibido apenas quando 0 dicionários retornam resultados.
- [x] Transformar lista de filtros em carrossel horizontal de linha única (44px) com micro-animação fluida (`_AnimatedFilterChip`).
- [x] Ocultar controles de vídeo em 800ms e habilitar looping infinito silencioso sem popups (`controls=0`).

### 3. Qualidade e Testes
- [x] Garantir 100% de cobertura nos testes unitários e de widgets (30 testes passando).
- [x] Manter análise estática limpa (`flutter analyze` com 0 lints/erros).
- [x] Validação contínua em dispositivo físico Android via ADB.

---

## Roadmap Futuro
- [ ] Suporte a categorização de favoritos por temas.
- [ ] Armazenamento offline expandido para vídeos de sinais frequentemente acessados.
- [ ] Exportação de lista de favoritos em PDF/Impressão para estudos.
