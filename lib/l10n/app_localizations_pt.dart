// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Prévia de nomes de arquivo';

  @override
  String get appDescription =>
      'Visualize alterações de nomes e detecte duplicatas sem acessar seus arquivos.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get purpose =>
      'Visualize alterações sem acessar ou renomear arquivos. Digite um nome por linha não vazia.';

  @override
  String get currentFilenames => 'Nomes de arquivo atuais';

  @override
  String get filenamesHint => 'foto 1.jpg\nfoto 2.jpg';

  @override
  String get findText => 'Texto a localizar';

  @override
  String get replaceWith => 'Substituir por';

  @override
  String get prefix => 'Prefixo';

  @override
  String get suffix => 'Sufixo';

  @override
  String get stemOnly => 'Aplicar somente ao nome sem extensão';

  @override
  String get previewChanges => 'Visualizar alterações';

  @override
  String get clearInput => 'Limpar entrada';

  @override
  String get previewResults => 'Resultados da prévia';

  @override
  String changedCount(int count) {
    return 'Alterados: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Inalterados: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Duplicatas: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Linha $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Nome proposto duplicado nas linhas $rows';
  }

  @override
  String get errorNoFilenames => 'Digite pelo menos um nome de arquivo.';

  @override
  String get errorTooManyCharacters =>
      'A entrada não pode exceder 50.000 caracteres.';

  @override
  String get errorTooManyFilenames => 'Digite no máximo 500 nomes de arquivo.';

  @override
  String get errorNoRule => 'Adicione pelo menos uma regra de alteração.';

  @override
  String get errorForbiddenCharacter =>
      'Nomes e regras não podem conter caracteres de controle, / ou \\.';

  @override
  String get errorEmptyProposedName =>
      'Uma regra produz um nome de arquivo vazio.';

  @override
  String get errorProposedNameTooLong =>
      'Um nome proposto excede 255 caracteres Unicode.';

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia de Prévia de Alteração de Nomes';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Visualiza alterações em lote de nomes de arquivos (prefixo, sufixo, substituição) e alerta sobre conflitos de nomes.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Cole os nomes originais (um por linha). Configure prefixo, sufixo ou substituição para ver o resultado em tempo real.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Exibe os nomes originais e alterados lado a lado, conta as alterações e destaca nomes duplicados com alertas.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Original:\nphoto_1.jpg\nphoto_2.jpg\nRegra: Prefixo \"2026_\" e trocar \"_\" por \"-\"\nResultado: 2026_photo-1.jpg, 2026_photo-2.jpg (0 colisões).';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Simulador de texto. Não acessa o armazenamento do aparelho nem renomeia arquivos reais no disco.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Os nomes de arquivos são processados na memória sem envio ou armazenamento. Um banner do AdMob é exibido abaixo.';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Prévia de nomes de arquivo';

  @override
  String get appDescription =>
      'Visualize alterações de nomes e detecte duplicatas sem acessar seus arquivos.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get purpose =>
      'Visualize alterações sem acessar ou renomear arquivos. Digite um nome por linha não vazia.';

  @override
  String get currentFilenames => 'Nomes de arquivo atuais';

  @override
  String get filenamesHint => 'foto 1.jpg\nfoto 2.jpg';

  @override
  String get findText => 'Texto a localizar';

  @override
  String get replaceWith => 'Substituir por';

  @override
  String get prefix => 'Prefixo';

  @override
  String get suffix => 'Sufixo';

  @override
  String get stemOnly => 'Aplicar somente ao nome sem extensão';

  @override
  String get previewChanges => 'Visualizar alterações';

  @override
  String get clearInput => 'Limpar entrada';

  @override
  String get previewResults => 'Resultados da prévia';

  @override
  String changedCount(int count) {
    return 'Alterados: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Inalterados: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Duplicatas: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Linha $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Nome proposto duplicado nas linhas $rows';
  }

  @override
  String get errorNoFilenames => 'Digite pelo menos um nome de arquivo.';

  @override
  String get errorTooManyCharacters =>
      'A entrada não pode exceder 50.000 caracteres.';

  @override
  String get errorTooManyFilenames => 'Digite no máximo 500 nomes de arquivo.';

  @override
  String get errorNoRule => 'Adicione pelo menos uma regra de alteração.';

  @override
  String get errorForbiddenCharacter =>
      'Nomes e regras não podem conter caracteres de controle, / ou \\.';

  @override
  String get errorEmptyProposedName =>
      'Uma regra produz um nome de arquivo vazio.';

  @override
  String get errorProposedNameTooLong =>
      'Um nome proposto excede 255 caracteres Unicode.';

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia de Prévia de Alteração de Nomes';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Visualiza alterações em lote de nomes de arquivos (prefixo, sufixo, substituição) e alerta sobre conflitos de nomes.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Cole os nomes originais (um por linha). Configure prefixo, sufixo ou substituição para ver o resultado em tempo real.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Exibe os nomes originais e alterados lado a lado, conta as alterações e destaca nomes duplicados com alertas.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Original:\nphoto_1.jpg\nphoto_2.jpg\nRegra: Prefixo \"2026_\" e trocar \"_\" por \"-\"\nResultado: 2026_photo-1.jpg, 2026_photo-2.jpg (0 colisões).';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Simulador de texto. Não acessa o armazenamento do aparelho nem renomeia arquivos reais no disco.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Os nomes de arquivos são processados na memória sem envio ou armazenamento. Um banner do AdMob é exibido abaixo.';
}
