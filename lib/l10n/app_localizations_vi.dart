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

  @override
  String get helpTooltip => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTitle => 'Hướng dẫn xem trước đổi tên tệp';

  @override
  String get helpProblemSolvedTitle => 'Vấn đề giải quyết';

  @override
  String get helpProblemSolvedContent =>
      'Xem trước các thay đổi đổi tên tệp hàng loạt (tiền tố, hậu tố, thay thế) và cảnh báo trùng tên trước khi thực hiện.';

  @override
  String get helpHowToUseTitle => 'Cách sử dụng';

  @override
  String get helpHowToUseContent =>
      'Dán tên tệp gốc (mỗi tệp một dòng). Cấu hình tiền tố, hậu tố hoặc thay thế văn bản để xem kết quả cập nhật ngay lập tức.';

  @override
  String get helpReadingResultsTitle => 'Đọc kết quả';

  @override
  String get helpReadingResultsContent =>
      'Hiển thị song song tên tệp gốc và tên tệp đã đổi, đếm số lượng thay đổi và làm nổi bật các tên bị trùng lặp.';

  @override
  String get helpExampleTitle => 'Ví dụ';

  @override
  String get helpExampleContent =>
      'Gốc:\nphoto_1.jpg\nphoto_2.jpg\nQuy tắc: Tiền tố \"2026_\" & Thay \"_\" bằng \"-\"\nKết quả: 2026_photo-1.jpg, 2026_photo-2.jpg (0 xung đột).';

  @override
  String get helpLimitsTitle => 'Xác thực & Giới hạn';

  @override
  String get helpLimitsContent =>
      'Chỉ là công cụ mô phỏng chuỗi văn bản. Không truy cập bộ nhớ thiết bị hoặc đổi tên tệp thực tế trên đĩa.';

  @override
  String get helpDataAndPrivacyTitle => 'Dữ liệu cục bộ & Quảng cáo';

  @override
  String get helpDataAndPrivacyContent =>
      'Tên tệp được xử lý hoàn toàn trong bộ nhớ thiết bị mà không cần truy cập bộ nhớ. Biểu ngữ AdMob hiển thị ở dưới.';
}
