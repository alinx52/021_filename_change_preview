// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Vista previa de nombres';

  @override
  String get appDescription =>
      'Previsualiza cambios de nombres y detecta duplicados sin acceder a tus archivos.';

  @override
  String get languageMenuTooltip => 'Elegir idioma';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get appearanceTooltip => 'Elegir apariencia';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plana';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get purpose =>
      'Previsualiza los cambios sin acceder a los archivos ni cambiarles el nombre. Escribe un nombre por cada línea no vacía.';

  @override
  String get currentFilenames => 'Nombres de archivo actuales';

  @override
  String get filenamesHint => 'foto 1.jpg\nfoto 2.jpg';

  @override
  String get findText => 'Texto que buscar';

  @override
  String get replaceWith => 'Reemplazar por';

  @override
  String get prefix => 'Prefijo';

  @override
  String get suffix => 'Sufijo';

  @override
  String get stemOnly => 'Aplicar solo al nombre sin extensión';

  @override
  String get previewChanges => 'Previsualizar cambios';

  @override
  String get clearInput => 'Borrar entrada';

  @override
  String get previewResults => 'Resultados de la vista previa';

  @override
  String changedCount(int count) {
    return 'Cambiados: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Sin cambios: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Duplicados: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Fila $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Nombre propuesto duplicado en las filas $rows';
  }

  @override
  String get errorNoFilenames => 'Introduce al menos un nombre de archivo.';

  @override
  String get errorTooManyCharacters =>
      'La entrada no puede superar los 50.000 caracteres.';

  @override
  String get errorTooManyFilenames =>
      'Introduce un máximo de 500 nombres de archivo.';

  @override
  String get errorNoRule => 'Añade al menos una regla de cambio.';

  @override
  String get errorForbiddenCharacter =>
      'Los nombres y las reglas no pueden contener caracteres de control, / ni \\.';

  @override
  String get errorEmptyProposedName =>
      'Una regla produce un nombre de archivo vacío.';

  @override
  String get errorProposedNameTooLong =>
      'Un nombre propuesto supera los 255 caracteres Unicode.';

  @override
  String get helpTooltip => 'Ayuda y guía';

  @override
  String get helpTitle => 'Guía de vista previa de cambio de nombres';

  @override
  String get helpProblemSolvedTitle => 'Problema que resuelve';

  @override
  String get helpProblemSolvedContent =>
      'Previsualiza cambios masivos de nombres de archivo (prefijo, sufijo, reemplazar) y detecta duplicados antes de aplicarlos.';

  @override
  String get helpHowToUseTitle => 'Cómo usar';

  @override
  String get helpHowToUseContent =>
      'Pega los nombres de archivo originales (uno por línea). Configura prefijo, sufijo o texto de reemplazo para ver el resultado en vivo.';

  @override
  String get helpReadingResultsTitle => 'Interpretación de resultados';

  @override
  String get helpReadingResultsContent =>
      'Muestra nombres originales y modificados en paralelo, cuenta los cambios y resalta duplicados con advertencias.';

  @override
  String get helpExampleTitle => 'Ejemplo';

  @override
  String get helpExampleContent =>
      'Original:\nphoto_1.jpg\nphoto_2.jpg\nRegla: Prefijo \"2026_\" y reemplazar \"_\" por \"-\"\nResultado: 2026_photo-1.jpg, 2026_photo-2.jpg (0 colisiones).';

  @override
  String get helpLimitsTitle => 'Validaciones y límites';

  @override
  String get helpLimitsContent =>
      'Simulador de texto únicamente. No accede al almacenamiento del dispositivo ni renombra archivos reales en disco.';

  @override
  String get helpDataAndPrivacyTitle => 'Datos locales y anuncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Los nombres de archivo se procesan en la memoria sin guardarse ni subirse. Se muestra un banner estándar de AdMob.';
}
