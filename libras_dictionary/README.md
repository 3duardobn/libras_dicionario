# Dicionário Integrado de Libras 🤟

Este é um aplicativo Flutter multiplataforma que centraliza a busca de sinais em Libras (Língua Brasileira de Sinais) a partir de diversas fontes institucionais, acadêmicas e governamentais. O objetivo é facilitar o acesso de estudantes, intérpretes e da comunidade surda a vídeos e descrições de sinais em um único lugar.

## 🚀 Funcionalidades

- **Busca Multi-fonte:** Pesquise uma palavra uma única vez e obtenha resultados de vários dicionários simultaneamente.
- **Visualização em Cards:** Resultados organizados em listas colapsáveis para economizar dados e processamento.
- **Player Inteligente:** Suporte a vídeos do YouTube e arquivos MP4 diretos com funções de auto-play e loop.
- **Configurações Personalizadas:** Ative ou desative fontes específicas conforme sua preferência.
- **Tema Dinâmico:** Suporte completo a Modo Claro e Modo Escuro com persistência de escolha.
- **Splash Screen:** Inicialização personalizada com a identidade visual do projeto.

## 📚 Fontes de Dados Integradas

O aplicativo realiza o *scraping* e integração via API das seguintes instituições:

1.  **INES (Instituto Nacional de Educação de Surdos):** Acesso ao dicionário oficial do órgão federal referência na área.
2.  **Rede Surdos (UFC):** Conteúdo da Universidade Federal do Ceará via integração WordPress.
3.  **UFV (Universidade Federal de Viçosa):** Integração com o dicionário de Libras da instituição.
4.  **Libras Acadêmica (UFF):** Glossário especializado da Universidade Federal Fluminense.
5.  **SpreadTheSign:** Acesso à base de dados internacional do European Sign Language Centre.

## 🛠️ Tecnologias Utilizadas

- **Flutter & Dart:** Framework principal.
- **Video Player & Chewie:** Para reprodução de vídeos MP4.
- **Youtube Player Flutter:** Para vídeos hospedados no YouTube.
- **Shared Preferences:** Para salvar configurações de usuário e tema.
- **HTTP & Diacritic:** Para requisições de rede e tratamento de texto.
- **Flutter SVG:** Para renderização de ícones vetoriais.

## 🏗️ Processo de Build e Execução

### Pré-requisitos
- Flutter SDK (v3.11.0 ou superior)
- Android Studio / VS Code com extensões Flutter/Dart
- Dispositivo físico ou Emulador Android/iOS

### Configuração Inicial
1. Clone o repositório:
   ```bash
   git clone https://github.com/3duardobn/libras_dicionario.git
   ```
2. Entre na pasta do projeto:
   ```bash
   cd libras_dictionary
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```

### Gerando os Ícones do Aplicativo
Antes de rodar pela primeira vez, gere os ícones nativos a partir do logo SVG:
```bash
dart run flutter_launcher_icons
```

### Executando o Projeto
Para rodar em modo debug:
```bash
flutter run
```

Para gerar a versão de lançamento (APK):
```bash
flutter build apk --release
```

## ⚖️ Licença

Este projeto está licenciado sob a **GNU General Public License v3.0**. Veja o arquivo `LICENSE` para mais detalhes ou acesse o repositório oficial: [https://github.com/3duardobn/libras_dicionario](https://github.com/3duardobn/libras_dicionario)

---
*Desenvolvido com foco em acessibilidade e democratização do ensino de Libras.*
