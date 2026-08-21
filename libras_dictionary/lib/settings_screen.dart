import 'package:flutter/material.dart';

import 'card.dart';
import 'state.dart' as st;
import 'strings.dart' as s;

const _sourceLabels = {
  'INES': 'INES (Dicionário INES)',
  'UFV': 'UFV (Universidade Federal de Viçosa)',
  'RedeSurdos': 'Rede Surdos (UFC)',
  'LibrasAcademicaUFF': 'Libras Acadêmica (UFF)',
  'SpreadTheSign': 'SpreadTheSign',
};

/// Short display label for a source id, shared by filter chips and
/// the settings screen.
String sourceLabel(String source) {
  switch (source) {
    case 'RedeSurdos':
      return 'Rede Surdos';
    case 'LibrasAcademicaUFF':
      return 'Libras Acadêmica';
    default:
      return source;
  }
}

Widget _buildSourceCredit(String name, String org, String url, String copyright) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(org, style: const TextStyle(fontSize: 12)),
        InkWell(
          onTap: () => st.appState.launchUrlString(url),
          child: Text(
            url,
            style: const TextStyle(color: Color(0xFF1565C0), fontSize: 12),
          ),
        ),
        Text(
          copyright,
          style: const TextStyle(fontSize: 11, fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 8),
      ],
    ),
  );
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(s.settingsTitle)),
      body: ListenableBuilder(
        listenable: st.appState,
        builder: (context, _) {
          final state = st.appState;
          return ListView(
            children: [
              ListTile(
                title: Text(
                  s.settingsSearchSection,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SwitchListTile(
                title: const Text(s.settingsYoutubeButton),
                subtitle: const Text(s.settingsYoutubeButtonSub),
                value: state.showYoutubeButton,
                onChanged: state.setShowYoutubeButton,
              ),
              SwitchListTile(
                title: const Text(s.settingsShareMinimal),
                subtitle: const Text(s.settingsShareMinimalSub),
                value: state.isShareMinimal,
                onChanged: state.setShareMinimal,
              ),
              const Divider(),
              ListTile(
                title: Text(
                  s.settingsSources,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(s.settingsSourcesSub),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final source in ['INES', 'UFV', 'RedeSurdos', 'LibrasAcademicaUFF', 'SpreadTheSign'])
                    SwitchListTile(
                      title: Text(_sourceLabels[source] ?? source),
                      value: state.enabledSources.contains(source),
                      secondary: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: getSourceColor(source),
                          shape: BoxShape.circle,
                        ),
                      ),
                      onChanged: (value) => state.setSourceEnabled(source, value),
                    ),
                ],
              ),
              const Divider(),
              ListTile(
                title: Text(
                  s.settingsCredits,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(s.settingsCreditsSub),
              ),
              _buildSourceCredit(
                'INES',
                'Instituto Nacional de Educação de Surdos',
                'https://dicionario.ines.gov.br/',
                'Os direitos autorais dos vídeos e imagens pertencem ao INES. O uso neste aplicativo é para fins educacionais e de acessibilidade.',
              ),
              _buildSourceCredit(
                'Rede Surdos',
                'Universidade Federal do Ceará (UFC)',
                'https://redesurdosce.ufc.br/',
                'Conteúdo disponibilizado pela Rede Surdos da UFC. Todos os direitos reservados aos produtores originais.',
              ),
              _buildSourceCredit(
                'UFV',
                'Universidade Federal de Viçosa',
                'https://sistemas.cead.ufv.br/capes/dicionario/',
                'Dicionário de Libras da UFV. Conteúdo protegido por direitos autorais da instituição.',
              ),
              _buildSourceCredit(
                'Libras Acadêmica',
                'Universidade Federal Fluminense (UFF)',
                'https://librasacademica.uff.br/',
                'Glossário de Libras Acadêmica da UFF. Direitos reservados à UFF.',
              ),
              _buildSourceCredit(
                'SpreadTheSign',
                'European Sign Language Centre',
                'https://www.spreadthesign.com/',
                'SpreadTheSign é um dicionário internacional. Os direitos pertencem ao European Sign Language Centre.',
              ),
              _buildSourceCredit(
                'Ícone de Libras',
                'Wikimedia Commons',
                'https://en.wikipedia.org/wiki/File:Brazilian_Sign_Language_Symbol.svg',
                'O símbolo da Língua Brasileira de Sinais usado neste projeto está disponível sob a licença Creative Commons CC0 1.0 Universal Public Domain Dedication.',
              ),
              const Divider(),
              ListTile(
                title: Text(
                  s.settingsLicense,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(s.settingsLicenseText),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () => st.appState.launchUrlString(
                          'https://github.com/3duardobn/libras_dicionario'),
                      child: const Text(
                        s.settingsGithub,
                        style: TextStyle(
                          color: Color(0xFF1565C0),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () => st.appState.launchUrlString(
                          'https://edbn.dev/projetos/libras-dicionario/'),
                      child: const Text(
                        s.settingsWebsite,
                        style: TextStyle(
                          color: Color(0xFF1565C0),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}