// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Pratinjau Perubahan Nama File';

  @override
  String get appDescription =>
      'Pratinjau perubahan nama dan temukan hasil duplikat tanpa mengakses file.';

  @override
  String get languageMenuTooltip => 'Pilih bahasa';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get appearanceTooltip => 'Pilih tampilan';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Datar';

  @override
  String get appearanceSoft => 'Lembut';

  @override
  String get purpose =>
      'Pratinjau perubahan tanpa mengakses atau mengganti nama file. Masukkan satu nama file di setiap baris yang tidak kosong.';

  @override
  String get currentFilenames => 'Nama file saat ini';

  @override
  String get filenamesHint => 'foto 1.jpg\nfoto 2.jpg';

  @override
  String get findText => 'Teks yang dicari';

  @override
  String get replaceWith => 'Ganti dengan';

  @override
  String get prefix => 'Awalan';

  @override
  String get suffix => 'Akhiran';

  @override
  String get stemOnly => 'Terapkan hanya pada nama tanpa ekstensi';

  @override
  String get previewChanges => 'Pratinjau perubahan';

  @override
  String get clearInput => 'Hapus masukan';

  @override
  String get previewResults => 'Hasil pratinjau';

  @override
  String changedCount(int count) {
    return 'Diubah: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Tidak diubah: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Duplikat: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Baris $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Nama usulan sama pada baris $rows';
  }

  @override
  String get errorNoFilenames => 'Masukkan setidaknya satu nama file.';

  @override
  String get errorTooManyCharacters =>
      'Masukan tidak boleh melebihi 50.000 karakter.';

  @override
  String get errorTooManyFilenames => 'Masukkan maksimal 500 nama file.';

  @override
  String get errorNoRule => 'Tambahkan setidaknya satu aturan perubahan.';

  @override
  String get errorForbiddenCharacter =>
      'Nama dan aturan tidak boleh berisi karakter kontrol, /, atau \\.';

  @override
  String get errorEmptyProposedName =>
      'Suatu aturan menghasilkan nama file kosong.';

  @override
  String get errorProposedNameTooLong =>
      'Nama file usulan melebihi 255 karakter Unicode.';
}
