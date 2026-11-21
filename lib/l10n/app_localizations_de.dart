// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Dateinamen-Vorschau';

  @override
  String get appDescription =>
      'Dateinamenänderungen und Duplikate ohne Dateizugriff vorab prüfen.';

  @override
  String get languageMenuTooltip => 'Sprache auswählen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get appearanceTooltip => 'Darstellung auswählen';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flach';

  @override
  String get appearanceSoft => 'Weich';

  @override
  String get purpose =>
      'Änderungen ohne Dateizugriff oder Umbenennen prüfen. Pro nicht leerer Zeile einen Dateinamen eingeben.';

  @override
  String get currentFilenames => 'Aktuelle Dateinamen';

  @override
  String get filenamesHint => 'Foto 1.jpg\nFoto 2.jpg';

  @override
  String get findText => 'Suchtext';

  @override
  String get replaceWith => 'Ersetzen durch';

  @override
  String get prefix => 'Präfix';

  @override
  String get suffix => 'Suffix';

  @override
  String get stemOnly => 'Nur auf den Namen ohne Erweiterung anwenden';

  @override
  String get previewChanges => 'Änderungen prüfen';

  @override
  String get clearInput => 'Eingabe löschen';

  @override
  String get previewResults => 'Vorschauergebnisse';

  @override
  String changedCount(int count) {
    return 'Geändert: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Unverändert: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Duplikate: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Zeile $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Vorgeschlagener Name ist in den Zeilen $rows doppelt';
  }

  @override
  String get errorNoFilenames => 'Mindestens einen Dateinamen eingeben.';

  @override
  String get errorTooManyCharacters =>
      'Die Eingabe darf höchstens 50.000 Zeichen enthalten.';

  @override
  String get errorTooManyFilenames => 'Höchstens 500 Dateinamen eingeben.';

  @override
  String get errorNoRule => 'Mindestens eine Änderungsregel hinzufügen.';

  @override
  String get errorForbiddenCharacter =>
      'Namen und Regeln dürfen keine Steuerzeichen, / oder \\ enthalten.';

  @override
  String get errorEmptyProposedName =>
      'Eine Regel erzeugt einen leeren Dateinamen.';

  @override
  String get errorProposedNameTooLong =>
      'Ein vorgeschlagener Dateiname überschreitet 255 Unicode-Zeichen.';
}
