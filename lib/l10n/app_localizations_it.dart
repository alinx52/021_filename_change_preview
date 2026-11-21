// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Anteprima nomi file';

  @override
  String get appDescription =>
      'Visualizza le modifiche ai nomi e rileva i duplicati senza accedere ai file.';

  @override
  String get languageMenuTooltip => 'Scegli lingua';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get appearanceTooltip => 'Scegli aspetto';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Piatto';

  @override
  String get appearanceSoft => 'Morbido';

  @override
  String get purpose =>
      'Visualizza le modifiche senza accedere ai file o rinominarli. Inserisci un nome per ogni riga non vuota.';

  @override
  String get currentFilenames => 'Nomi file attuali';

  @override
  String get filenamesHint => 'foto 1.jpg\nfoto 2.jpg';

  @override
  String get findText => 'Testo da trovare';

  @override
  String get replaceWith => 'Sostituisci con';

  @override
  String get prefix => 'Prefisso';

  @override
  String get suffix => 'Suffisso';

  @override
  String get stemOnly => 'Applica solo al nome senza estensione';

  @override
  String get previewChanges => 'Visualizza modifiche';

  @override
  String get clearInput => 'Cancella input';

  @override
  String get previewResults => 'Risultati anteprima';

  @override
  String changedCount(int count) {
    return 'Modificati: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Invariati: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Duplicati: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Riga $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Nome proposto duplicato nelle righe $rows';
  }

  @override
  String get errorNoFilenames => 'Inserisci almeno un nome file.';

  @override
  String get errorTooManyCharacters =>
      'L’input non può superare 50.000 caratteri.';

  @override
  String get errorTooManyFilenames => 'Inserisci al massimo 500 nomi file.';

  @override
  String get errorNoRule => 'Aggiungi almeno una regola di modifica.';

  @override
  String get errorForbiddenCharacter =>
      'Nomi e regole non possono contenere caratteri di controllo, / o \\.';

  @override
  String get errorEmptyProposedName => 'Una regola produce un nome file vuoto.';

  @override
  String get errorProposedNameTooLong =>
      'Un nome proposto supera 255 caratteri Unicode.';
}
