# Dicionário Integrado de Libras

<p align="center">
  <img src="libras_dictionary/Brazilian_Sign_Language_Symbol.svg" alt="Símbolo da Língua Brasileira de Sinais" width="120" height="120">
</p>

Aplicativo Flutter multiplataforma que centraliza a busca de sinais em Libras (Língua Brasileira de Sinais) a partir de diversas fontes institucionais, acadêmicas e governamentais. O objetivo é facilitar o acesso de estudantes, intérpretes e da comunidade surda a vídeos e descrições de sinais em um único lugar.

## 🚀 Funcionalidades

- **Busca Multi-fonte:** Pesquise uma palavra uma única vez e obtenha resultados de vários dicionários simultaneamente.
- **Busca no YouTube:** Integração com YouTube para buscar vídeos de sinais em Libras.
- **Visualização em Cards:** Resultados organizados em listas colapsáveis para economizar dados e processamento.
- **Player Inteligente:** Suporte a vídeos do YouTube e arquivos MP4 diretos com funções de auto-play e loop.
- **Configurações Personalizadas:** Ative ou desative fontes específicas conforme sua preferência.
- **Tema Dinâmico:** Suporte completo a Modo Claro e Modo Escuro com persistência de escolha.
- **Splash Screen:** Inicialização personalizada com a identidade visual do projeto.
- **Performance Otimizada:** Implementação de cache e otimizações de RegExp para melhor desempenho.

## 📚 Fontes de Dados Integradas

O aplicativo realiza o *scraping* e integração via API das seguintes instituições:

1. **INES (Instituto Nacional de Educação de Surdos):** Acesso ao dicionário oficial do órgão federal referência na área.
2. **Rede Surdos (UFC):** Conteúdo da Universidade Federal do Ceará via integração WordPress.
3. **UFV (Universidade Federal de Viçosa):** Integração com o dicionário de Libras da instituição.
4. **Libras Acadêmica (UFF):** Glossário especializado da Universidade Federal Fluminense.
5. **SpreadTheSign:** Acesso à base de dados internacional do European Sign Language Centre.
6. **YouTube:** Busca integrada de vídeos relacionados a sinais em Libras.

## 🛠️ Tecnologias Utilizadas

- **Flutter & Dart:** Framework principal.
- **Video Player & Chewie:** Para reprodução de vídeos MP4.
- **Youtube Player Flutter:** Para vídeos hospedados no YouTube.
- **Youtube Explode Dart:** Para busca e extração de dados do YouTube.
- **Shared Preferences:** Para salvar configurações de usuário e tema.
- **HTTP & Diacritic:** Para requisições de rede e tratamento de texto.
- **Flutter SVG:** Para renderização de ícones vetoriais.
- **URL Launcher:** Para abrir links externos.
- **Flutter HTML:** Para renderização de conteúdo HTML.

## 🏗️ Build e Execução

### Pré-requisitos
- Flutter SDK (v3.11.0 ou superior)
- Dart SDK (^3.11.0)
- Android Studio / VS Code com extensões Flutter/Dart
- Dispositivo físico ou Emulador Android/iOS
- Android SDK mínimo: 21

### Configuração Inicial
```bash
git clone https://github.com/3duardobn/libras_dicionario.git
cd libras_dicionario/libras_dictionary
flutter pub get
```

### Gerando os Ícones do Aplicativo
```bash
dart run flutter_launcher_icons
```

### Executando
```bash
# Debug
flutter run

# Release APK
flutter build apk --release

# Release Bundle (recomendado para Play Store)
flutter build appbundle --release
```

### Testes
```bash
# Executar todos os testes
flutter test

# Executar testes com coverage
flutter test --coverage

# Análise estática de código
dart analyze
```

## 🏆 Melhorias Recentes

- Implementação de cache para melhor performance
- Otimização de RegExp para buscas mais eficientes
- Integração com YouTube Explode para busca de vídeos
- Testes unitários com Mockito
- Melhorias na persistência de tema

## 📱 Compatibilidade

- **Android:** API 21+ (Android 5.0+)
- **iOS:** iOS 11.0+
- **Web:** Em desenvolvimento

## ⚖️ Licença

Este projeto está licenciado sob a **GNU General Public License v3.0**. Veja o arquivo [`LICENSE`](LICENSE) para mais detalhes.

---
*Desenvolvido com foco em acessibilidade e democratização do ensino de Libras.*
