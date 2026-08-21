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
const tryAgain = 'Tentar novamente';
const searchError =
    'Não foi possível completar a busca. Verifique sua conexão e tente novamente.';
String sourcesUnavailable(String names) => 'Fontes indisponíveis: $names';
const recentSearches = 'Buscas recentes';
const favoritesTitle = 'Favoritos';
const favoritesEmpty =
    'Nenhum favorito ainda. Toque na estrela de um sinal para salvá-lo.';
const favoriteAdd = 'Adicionar aos favoritos';
const favoriteRemove = 'Remover dos favoritos';
const videoError = 'Erro ao carregar o vídeo.';
const imageError = 'Erro ao carregar a imagem.';
const youtubeError = 'Não foi possível reproduzir o vídeo.';
const openInYoutube = 'Abrir no YouTube';
const playVideo = 'Reproduzir vídeo';
const shareSign = 'Compartilhar sinal';
const expandHint = 'Toque para expandir';
const collapseHint = 'Toque para recolher';
const descriptionLabel = 'Descrição:';
const exampleLabel = 'Exemplo:';
const glosaLabel = 'Tradução Libras (Glosa):';
const settingsTitle = 'Configurações';
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
const settingsLicenseText = 'Este projeto é de domínio público (CC0).';
const settingsGithub = 'Repositório no GitHub';
const settingsWebsite = 'Site do projeto';
const filterAll = 'Todos';
String shareTextMinimal(String? title, String? link) => '$title: $link';
String shareTextFull(String? title, String? link) =>
    'Veja este sinal de Libras para "$title": $link';
String shareSubject(String? title) => 'Sinal de Libras: $title';