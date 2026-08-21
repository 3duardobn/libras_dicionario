# Guia de Build e Publicação — Dicionário Libras

Como compilar o aplicativo e publicá-lo na **Google Play Store** e no
**F-Droid**. O projeto é escrito em **Dart puro** com Flutter — basta o Flutter
SDK para desenvolver, testar e compilar; não há toolchains adicionais.

## 1. Pré-requisitos

| Ferramenta | Versão | Instalação |
|---|---|---|
| Flutter | 3.41.x (stable) | <https://docs.flutter.dev/get-started/install> |
| Java (JDK) | 17+ | já usado pelo Android SDK |
| Android SDK | via Android Studio ou `flutter doctor` | — |

## 2. Build local (debug/desenvolvimento)

```bash
cd libras_dictionary
flutter pub get
flutter run              # roda em device/emulador
```

Durante o desenvolvimento, use o hot-reload do próprio Flutter (`r` no
terminal do `flutter run`).

## 3. Assinatura de release (uma vez só)

A Play Store rejeita apps assinados com a chave de debug. Gere um keystore
próprio (guarde-o com backup seguro — **perder o keystore = não poder mais
atualizar o app**):

```bash
mkdir -p ~/keystores
keytool -genkey -v \
  -keystore ~/keystores/libras-release.jks \
  -keyalg RSA -keysize 2048 -validity 10000 \
  -alias libras
```

Crie `android/key.properties` a partir do exemplo:

```bash
cp android/key.properties.example android/key.properties
# edite com o caminho do .jks e as senhas
```

`key.properties` e `*.jks` já estão no `.gitignore` — **nunca** faça commit deles.
O `android/app/build.gradle.kts` usa o keystore automaticamente quando
`key.properties` existe; sem ele, cai na assinatura de debug (útil para testes).

## 4. Build de release

```bash
cd libras_dictionary
flutter pub get

# Para a Play Store (App Bundle, obrigatório):
flutter build appbundle --release
# -> build/app/outputs/bundle/release/app-release.aab

# Para distribuição direta / GitHub Releases (APKs):
flutter build apk --release --split-per-abi
# -> build/app/outputs/flutter-apk/app-<abi>-release.apk
```

Verificação da assinatura:

```bash
jarsigner -verify -verbose -certs build/app/outputs/bundle/release/app-release.aab | tail -5
```

## 5. Release via CI (GitHub Actions)

O workflow `.github/workflows/build-release.yml` roda em qualquer tag `v*`:
gera APKs (split por ABI) **e o `.aab`**, e anexa tudo a um GitHub Release.

Para o CI assinar com a chave de release, configure estes *secrets* no
repositório (Settings → Secrets and variables → Actions):

| Secret | Conteúdo |
|---|---|
| `KEYSTORE_BASE64` | `base64 -w0 ~/keystores/libras-release.jks` |
| `KEYSTORE_PASSWORD` | senha do keystore |
| `KEY_ALIAS` | `libras` |
| `KEY_PASSWORD` | senha da chave |

Fluxo de release:

```bash
# 1. Atualize a versão em pubspec.yaml (ex.: 1.0.1+2 — sempre incremente o +N)
# 2. Commit e tag:
git commit -am "release: v1.0.1"
git tag v1.0.1
git push origin main v1.0.1
# 3. O CI publica APKs + AAB no GitHub Release.
```

## 6. Publicação na Google Play Store

1. **Conta**: crie uma conta de desenvolvedor em
   <https://play.google.com/console> (taxa única de US$ 25).
2. **Criar app**: nome "Dicionário Libras", idioma padrão pt-BR, tipo App,
   gratuito.
3. **Política de privacidade**: publique `docs/privacy-policy.md` no domínio
   **edbn.dev** (ex.: `https://edbn.dev/projetos/libras-dicionario/privacidade/`)
   e informe a URL em *Política do app → Política de Privacidade*.
4. **Data Safety (Segurança dos dados)**: declare que o app **não coleta nem
   compartilha dados**. Os pontos relevantes:
   - Coleta de dados: **Não**
   - Compartilhamento: **Não**
   - Dados criptografados em trânsito: **Sim** (todas as requisições são HTTPS)
   - Exclusão de dados: não se aplica (nada é coletado)
5. **Classificação de conteúdo**: questionário → app de referência/educação,
   sem conteúdo sensível. Como mostra vídeos do YouTube incorporados, marque
   "conteúdo gerado por usuários de terceiros" apenas se solicitado sobre
   conteúdo da web; o app apenas incorpora o player oficial do YouTube.
6. **Público-alvo**: recomendado 13+ (o app incorpora player do YouTube; a
   política do YouTube exige idade mínima).
7. **Upload**: em *Produção* (ou *Teste interno* primeiro — recomendado), envie
   o `app-release.aab`. Aceite o **Play App Signing** (o Google passa a assinar
   a distribuição; seu keystore vira "upload key").
8. **Store listing**: use os textos de
   `fastlane/metadata/android/pt-BR/` (título, descrições) e o ícone 512×512 em
   `fastlane/metadata/android/pt-BR/images/icon.png`. Serão necessários também
   ao menos 2 screenshots do telefone (tire com `flutter run` +
   captura do device) e um banner "feature graphic" 1024×500.
9. Revisão do Google leva de horas a alguns dias.

### Publicação automática na Play Store (após a primeira manual)

O workflow de release publica o `.aab` automaticamente na faixa de **teste
interno** quando estes pré-requisitos existem:

1. Primeira versão enviada manualmente no Play Console (obrigatório pelo
   Google — cria a ficha do app).
2. Assinatura de release configurada no CI (secrets `KEYSTORE_*`).
3. Conta de serviço: Play Console → *Configurações → Acesso à API* → criar
   conta de serviço no Google Cloud, conceder papel "Gerente de lançamentos"
   no Play Console, baixar o JSON e salvá-lo como secret
   `PLAY_SERVICE_ACCOUNT_JSON`.

Sem os secrets, a etapa é pulada silenciosamente. A promoção de teste interno
para produção continua manual, no Console.

### Conformidade com o YouTube (importante)

- O app **não** usa APIs não oficiais do YouTube: a busca no YouTube abre o
  próprio app/site do YouTube, e os vídeos do YouTube encontrados nos
  dicionários são reproduzidos com o **player incorporado oficial**
  (`youtube_player_iframe`, IFrame Player API), sem bloquear anúncios nem
  reproduzir em segundo plano. Não remova essas propriedades — são requisito
  dos Termos de Serviço da API do YouTube e evitam rejeição na revisão da Play
  Store.

## 7. Publicação no F-Droid

O app atende aos requisitos do F-Droid: licença livre (CC0, arquivo `LICENSE`
na raiz do repositório), sem dependências proprietárias e sem rastreadores. O
código é Dart puro, então o servidor de build do F-Droid precisa apenas do
Flutter.

1. **Metadados fastlane** (já incluídos): `fastlane/metadata/android/{pt-BR,en-US}/`
   com título, descrições e ícone — o F-Droid lê essa estrutura direto do
   repositório. Adicione screenshots em
   `fastlane/metadata/android/pt-BR/images/phoneScreenshots/` quando tiver.
2. **Tag de release**: o F-Droid constrói a partir de tags `v*` (mesmo fluxo do
   CI).
3. **Submissão**: fork de <https://gitlab.com/fdroid/fdroiddata>, copie o
   arquivo pronto [`fdroid/dev.edbn.libras_dictionary.yml`](../../fdroid/dev.edbn.libras_dictionary.yml)
   (na raiz deste repositório) para `metadata/dev.edbn.libras_dictionary.yml`
   no fork e abra um Merge Request. Conteúdo de referência:

   ```yaml
   Categories:
     - Reading
     - Science & Education
   License: CC0-1.0
   AuthorName: eduardobn
   SourceCode: https://github.com/3duardobn/libras_dicionario
   IssueTracker: https://github.com/3duardobn/libras_dicionario/issues
   WebSite: https://edbn.dev/projetos/libras-dicionario/

   AutoName: Dicionário Libras
   RepoType: git
   Repo: https://github.com/3duardobn/libras_dicionario.git

   Builds:
     - versionName: 1.0.0
       versionCode: 1
       commit: v1.0.0
       subdir: libras_dictionary
       submodules: false
       sudo:
         - apt-get update
         - apt-get install -y openjdk-17-jdk-headless
       output: build/app/outputs/flutter-apk/app-release.apk
       srclibs:
         - flutter@3.41.7
       build:
         - $$flutter$$/bin/flutter config --no-analytics
         - $$flutter$$/bin/flutter pub get
         - $$flutter$$/bin/flutter build apk --release

   AutoUpdateMode: Version
   UpdateCheckMode: Tags ^v[0-9.]+$
   CurrentVersion: 1.0.0
   CurrentVersionCode: 1
   ```

4. Teste local (opcional, requer `fdroidserver`): `fdroid build -v -l dev.edbn.libras_dictionary`.
5. Abra um Merge Request no fdroiddata. A inclusão inicial passa por revisão
   humana e pode levar algumas semanas. Depois de aceito, atualizações são
   automáticas a cada tag nova (`AutoUpdateMode: Version`).

**Observação**: o F-Droid assina os APKs com a chave deles — a versão do
F-Droid e a da Play Store não são intercambiáveis no mesmo aparelho (assinaturas
diferentes). Isso é normal e esperado.

## 8. Checklist antes de cada release

- [ ] Versão incrementada em `pubspec.yaml` (`x.y.z+N`, `+N` sempre cresce)
- [ ] `flutter analyze` sem erros
- [ ] `flutter test` verde
- [ ] Testado em device real: busca (INES → vídeo mp4; Rede Surdos → vídeo
      YouTube), players não tocam ao mesmo tempo, botão YouTube abre o app externo
- [ ] Tag `vX.Y.Z` enviada; CI verde; `.aab` no GitHub Release
- [ ] Upload do `.aab` na Play Console
