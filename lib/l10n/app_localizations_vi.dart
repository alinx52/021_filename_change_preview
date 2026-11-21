// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Xem trước đổi tên tệp';

  @override
  String get appDescription =>
      'Xem trước thay đổi tên và phát hiện kết quả trùng lặp mà không truy cập tệp.';

  @override
  String get languageMenuTooltip => 'Chọn ngôn ngữ';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get appearanceTooltip => 'Chọn giao diện';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Phẳng';

  @override
  String get appearanceSoft => 'Mềm mại';

  @override
  String get purpose =>
      'Xem trước thay đổi mà không truy cập hoặc đổi tên tệp. Nhập một tên tệp trên mỗi dòng không trống.';

  @override
  String get currentFilenames => 'Tên tệp hiện tại';

  @override
  String get filenamesHint => 'ảnh 1.jpg\nảnh 2.jpg';

  @override
  String get findText => 'Văn bản cần tìm';

  @override
  String get replaceWith => 'Thay thế bằng';

  @override
  String get prefix => 'Tiền tố';

  @override
  String get suffix => 'Hậu tố';

  @override
  String get stemOnly => 'Chỉ áp dụng cho tên không gồm phần mở rộng';

  @override
  String get previewChanges => 'Xem trước thay đổi';

  @override
  String get clearInput => 'Xóa nội dung nhập';

  @override
  String get previewResults => 'Kết quả xem trước';

  @override
  String changedCount(int count) {
    return 'Đã đổi: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Không đổi: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Trùng lặp: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Dòng $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Tên đề xuất bị trùng ở các dòng $rows';
  }

  @override
  String get errorNoFilenames => 'Nhập ít nhất một tên tệp.';

  @override
  String get errorTooManyCharacters =>
      'Nội dung nhập không được vượt quá 50.000 ký tự.';

  @override
  String get errorTooManyFilenames => 'Chỉ nhập tối đa 500 tên tệp.';

  @override
  String get errorNoRule => 'Thêm ít nhất một quy tắc thay đổi.';

  @override
  String get errorForbiddenCharacter =>
      'Tên và quy tắc không được chứa ký tự điều khiển, / hoặc \\.';

  @override
  String get errorEmptyProposedName => 'Một quy tắc tạo ra tên tệp trống.';

  @override
  String get errorProposedNameTooLong =>
      'Tên tệp đề xuất vượt quá 255 ký tự Unicode.';
}
