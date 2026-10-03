// Copyright (C) 2026 Eduardo Barroso Nunes
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

/// User-facing text, centralised for future i18n. pt-BR only for now.
library;

const appTitle = 'Dicionário Libras';
const searchLabel = 'Pesquisar (Português)';
const searchButton = 'Buscar';
const youtubeButton = 'YouTube';
const youtubeTooltip = 'Buscar no YouTube';
const searchYoutube = 'Buscar no YouTube';
String searchYoutubeFor(String query) => 'Buscar "$query" no YouTube';
const notFoundDictionaries = 'Não encontrado nos dicionários.';
const typeToSearch = 'Digite uma palavra acima para pesquisar';
String noResultsFor(String query) => 'Nenhum resultado encontrado para "$query"';
String resultsCount(int count, String query) =>
    '$count ${count == 1 ? 'sinal encontrado' : 'sinais encontrados'} para "$query"';
const tryAgain = 'Tentar novamente';
const searchError =
    'Não foi possível completar a busca. Verifique sua conexão e tente novamente.';
String sourcesUnavailable(String names) => 'Fontes indisponíveis: $names';
const recentSearches = 'Buscas recentes';
const clearHistory = 'Limpar histórico';
String variationBadge(int index, int total) => 'Sinal $index de $total';
const favoritesTitle = 'Pastas';
const favoritesEmpty = 'Nenhuma pasta ainda. Crie uma para salvar sinais.';
const favoritesDefaultFolder = 'Salvos';
const favoriteAdd = 'Salvar na pasta';
const favoriteRemove = 'Remover dos salvos';
const saveToFolder = 'Salvar sinal';
const newFolder = 'Nova pasta';
const folderNameLabel = 'Nome da pasta';
const folderNameHint = 'Ex.: Sinais do trabalho';
const folderColorLabel = 'Cor da pasta';
const create = 'Criar';
const save = 'Salvar';
const cancel = 'Cancelar';
const rename = 'Renomear';
const delete = 'Excluir';
const deleteFolderConfirm = 'Excluir esta pasta e os sinais salvos nela?';
const folderEmpty = 'Nenhum sinal nesta pasta ainda.';
const moveToFolder = 'Mover para pasta';
const savedIn = 'Salvo em:';
const savedOne = 'sinal';
const savedMany = 'sinais';
const openFolder = 'Abrir pasta';
const videoError = 'Erro ao carregar o vídeo.';
const imageError = 'Erro ao carregar a imagem.';
const youtubeError = 'Não foi possível reproduzir o vídeo.';
const openInYoutube = 'Abrir no YouTube';
const playVideo = 'Reproduzir vídeo';
const linkCopied = 'Link copiado para a área de transferência';
const shareSign = 'Compartilhar sinal';
const expandHint = 'Toque para expandir';
const collapseHint = 'Toque para recolher';
const descriptionLabel = 'Descrição:';
const exampleLabel = 'Exemplo:';
const glosaLabel = 'Tradução Libras (Glosa):';
const settingsTitle = 'Configurações';
const settingsThemeSection = 'Tema';
const themeLight = 'Claro';
const themeDark = 'Escuro';
const themeHighContrast = 'Alto Contraste';
const themeHighContrastSub =
    'Preto e branco puros, traços mais grossos e estado por marcas, para facilitar a leitura.';
const settingsSearchSection = 'Configurações de Busca';
const settingsYoutubeButton = 'Botão de busca no YouTube';
const settingsYoutubeButtonSub =
    'Mostra o botão para buscar sinais no aplicativo do YouTube';
const settingsShareMinimal = 'Texto de compartilhamento mínimo';
const settingsShareMinimalSub =
    'Envia apenas a palavra e o link ao compartilhar';
const settingsSources = 'Fontes de Pesquisa';
const settingsSourcesSub = 'Ative ou desative as fontes de palavras';
const settingsCredits = 'Direitos Reservados';
const settingsCreditsSub = 'Créditos e fontes de dados';
const settingsLicense = 'Licença do Projeto';
const settingsLicenseText = 'Este projeto é licenciado sob GPL-3.0-or-later.';
const settingsGithub = 'Repositório no GitHub';
const settingsWebsite = 'Site do projeto';
const filterAll = 'Todos';
String shareTextMinimal(String? title, String? link) => '$title: $link';
String shareTextFull(String? title, String? link) =>
    'Veja este sinal de Libras para "$title": $link';
String shareSubject(String? title) => 'Sinal de Libras: $title';