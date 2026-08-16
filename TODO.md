# TODO.md — Lista de Tarefas do Projeto Dicionário de Libras

- [x] **Migração ClojureDart -> Flutter Dart**: Refatoração completa da base de código para Dart 3 puro e idiomático.
- [x] **Design Tokens & Tema M3**: Criação de `lib/theme.dart` alinhado com `DESIGN.md` (Light `#FFFBFE`, Dark `#1C1B1F`).
- [x] **Splash Screen Vetorial**: Criação de `lib/screens/splash_screen.dart` exibindo o logo vetorial com transição suave.
- [x] **Filtros Institucionais**: Correção do bug de estado nos chips de seleção individual de fontes.
- [x] **Escopo de Autocomplete INES**: Restrição de sugestões do INES apenas para quando a fonte INES estiver ativa.
- [x] **Dimensão dos Vídeos e Cards**: Expansão da área dos cards e proporção 14:9 dos vídeos para melhor toque nos botões.
- [x] **Interface Despoluída**: Remoção do FAB flutuante e substituição por Card condicional do YouTube (exibido apenas quando todas as fontes retornam 0 resultados após o carregamento).
- [x] **Barra de Filtros Animada**: Conversão da lista de chips em carrossel horizontal de linha única (44px) com micro-animações (`_AnimatedFilterChip`).
- [x] **Controles de Vídeo e Looping**: Configuração de `hideControlsTimer: 800ms` e reprodução em loop limpo (`controls=0`).
- [x] **Testes & Análise**: Suíte de 30 testes unitários e de widget com 100% de aprovação e 0 lints em `flutter analyze`.
- [x] **Deploy ADB**: Instalação e validação funcional no Samsung Galaxy A55.
