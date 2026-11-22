// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '文件名更改预览';

  @override
  String get appDescription => '无需访问文件即可预览文件名更改并发现重复结果。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get purpose => '无需访问文件或重命名即可预览结果。每个非空行输入一个文件名。';

  @override
  String get currentFilenames => '当前文件名';

  @override
  String get filenamesHint => '照片 1.jpg\n照片 2.jpg';

  @override
  String get findText => '查找文本';

  @override
  String get replaceWith => '替换为';

  @override
  String get prefix => '前缀';

  @override
  String get suffix => '后缀';

  @override
  String get stemOnly => '仅应用于文件名主体';

  @override
  String get previewChanges => '预览更改';

  @override
  String get clearInput => '清除输入';

  @override
  String get previewResults => '预览结果';

  @override
  String changedCount(int count) {
    return '已更改：$count';
  }

  @override
  String unchangedCount(int count) {
    return '未更改：$count';
  }

  @override
  String collisionsCount(int count) {
    return '重复：$count';
  }

  @override
  String rowNumber(int row) {
    return '第 $row 行';
  }

  @override
  String duplicateRows(String rows) {
    return '第 $rows 行的拟用文件名重复';
  }

  @override
  String get errorNoFilenames => '请至少输入一个文件名。';

  @override
  String get errorTooManyCharacters => '输入不能超过 50,000 个字符。';

  @override
  String get errorTooManyFilenames => '输入的文件名不能超过 500 个。';

  @override
  String get errorNoRule => '请至少添加一条更改规则。';

  @override
  String get errorForbiddenCharacter => '名称和规则不能包含控制字符、/ 或 \\。';

  @override
  String get errorEmptyProposedName => '规则生成了空文件名。';

  @override
  String get errorProposedNameTooLong => '拟用文件名超过 255 个 Unicode 字符。';

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '文件名重命名预览指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '在实际修改磁盘文件之前，离线预览批量文件名添加前缀、后缀、替换文本或编号后的效果，提前发现重名冲突。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '每行输入一个原始文件名。配置前缀、后缀、查找和替换内容或大小写转换，即可实时查看预览。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '左右并排对比原始与修改后的文件名，统计受影响数量，并在发生重名冲突时以醒目警告颜色标出。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '原始:\nphoto_1.jpg\nphoto_2.jpg\n规则: 添加前缀 \"2026_\" 并将 \"_\" 替换为 \"-\"\n结果: 2026_photo-1.jpg, 2026_photo-2.jpg (0项冲突)。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '仅为纯文本字符串模拟工具。不申请设备存储权限，不访问本地文件系统，不实际重命名磁盘上的真实文件。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有文件名仅在内存中处理，绝不上传或存储。屏幕下方展示标准Google AdMob横幅广告。';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appTitle => '文件名更改预览';

  @override
  String get appDescription => '无需访问文件即可预览文件名更改并发现重复结果。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get purpose => '无需访问文件或重命名即可预览结果。每个非空行输入一个文件名。';

  @override
  String get currentFilenames => '当前文件名';

  @override
  String get filenamesHint => '照片 1.jpg\n照片 2.jpg';

  @override
  String get findText => '查找文本';

  @override
  String get replaceWith => '替换为';

  @override
  String get prefix => '前缀';

  @override
  String get suffix => '后缀';

  @override
  String get stemOnly => '仅应用于文件名主体';

  @override
  String get previewChanges => '预览更改';

  @override
  String get clearInput => '清除输入';

  @override
  String get previewResults => '预览结果';

  @override
  String changedCount(int count) {
    return '已更改：$count';
  }

  @override
  String unchangedCount(int count) {
    return '未更改：$count';
  }

  @override
  String collisionsCount(int count) {
    return '重复：$count';
  }

  @override
  String rowNumber(int row) {
    return '第 $row 行';
  }

  @override
  String duplicateRows(String rows) {
    return '第 $rows 行的拟用文件名重复';
  }

  @override
  String get errorNoFilenames => '请至少输入一个文件名。';

  @override
  String get errorTooManyCharacters => '输入不能超过 50,000 个字符。';

  @override
  String get errorTooManyFilenames => '输入的文件名不能超过 500 个。';

  @override
  String get errorNoRule => '请至少添加一条更改规则。';

  @override
  String get errorForbiddenCharacter => '名称和规则不能包含控制字符、/ 或 \\。';

  @override
  String get errorEmptyProposedName => '规则生成了空文件名。';

  @override
  String get errorProposedNameTooLong => '拟用文件名超过 255 个 Unicode 字符。';

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => '文件名重命名预览指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '在实际修改磁盘文件之前，离线预览批量文件名添加前缀、后缀、替换文本或编号后的效果，提前发现重名冲突。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '每行输入一个原始文件名。配置前缀、后缀、查找和替换内容或大小写转换，即可实时查看预览。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '左右并排对比原始与修改后的文件名，统计受影响数量，并在发生重名冲突时以醒目警告颜色标出。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '原始:\nphoto_1.jpg\nphoto_2.jpg\n规则: 添加前缀 \"2026_\" 并将 \"_\" 替换为 \"-\"\n结果: 2026_photo-1.jpg, 2026_photo-2.jpg (0项冲突)。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '仅为纯文本字符串模拟工具。不申请设备存储权限，不访问本地文件系统，不实际重命名磁盘上的真实文件。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有文件名仅在内存中处理，绝不上传或存储。屏幕下方展示标准Google AdMob横幅广告。';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => '檔名變更預覽';

  @override
  String get appDescription => '無需存取檔案即可預覽檔名變更並找出重複結果。';

  @override
  String get languageMenuTooltip => '選擇語言';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get appearanceTooltip => '選擇外觀';

  @override
  String get appearanceMaterial => '質感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get purpose => '無需存取檔案或重新命名即可預覽結果。每個非空白行輸入一個檔名。';

  @override
  String get currentFilenames => '目前檔名';

  @override
  String get filenamesHint => '照片 1.jpg\n照片 2.jpg';

  @override
  String get findText => '尋找文字';

  @override
  String get replaceWith => '取代為';

  @override
  String get prefix => '前綴';

  @override
  String get suffix => '後綴';

  @override
  String get stemOnly => '僅套用至檔名主體';

  @override
  String get previewChanges => '預覽變更';

  @override
  String get clearInput => '清除輸入';

  @override
  String get previewResults => '預覽結果';

  @override
  String changedCount(int count) {
    return '已變更：$count';
  }

  @override
  String unchangedCount(int count) {
    return '未變更：$count';
  }

  @override
  String collisionsCount(int count) {
    return '重複：$count';
  }

  @override
  String rowNumber(int row) {
    return '第 $row 行';
  }

  @override
  String duplicateRows(String rows) {
    return '第 $rows 行的建議檔名重複';
  }

  @override
  String get errorNoFilenames => '請至少輸入一個檔名。';

  @override
  String get errorTooManyCharacters => '輸入不可超過 50,000 個字元。';

  @override
  String get errorTooManyFilenames => '輸入的檔名不可超過 500 個。';

  @override
  String get errorNoRule => '請至少新增一項變更規則。';

  @override
  String get errorForbiddenCharacter => '名稱和規則不可包含控制字元、/ 或 \\。';

  @override
  String get errorEmptyProposedName => '規則產生了空白檔名。';

  @override
  String get errorProposedNameTooLong => '建議檔名超過 255 個 Unicode 字元。';

  @override
  String get helpTooltip => '說明與指南';

  @override
  String get helpTitle => '檔名批次修改預覽指南';

  @override
  String get helpProblemSolvedTitle => '解決的問題';

  @override
  String get helpProblemSolvedContent =>
      '在實際修改檔案前，離線預覽批次檔名新增前綴、後綴、尋找取代或編號後的結果，提前揪出命名衝突。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent => '逐行輸入原始檔名。設定欲新增的前綴、後綴、尋找與取代文字，即可即時查看預覽結果。';

  @override
  String get helpReadingResultsTitle => '查看結果';

  @override
  String get helpReadingResultsContent =>
      '並列對比修改前後的檔名，統計變更數量，並在產生重複檔名時以顯眼顏色標記警示。';

  @override
  String get helpExampleTitle => '範例';

  @override
  String get helpExampleContent =>
      '原始:\nphoto_1.jpg\nphoto_2.jpg\n規則: 新增前綴 \"2026_\" 並將 \"_\" 取代為 \"-\"\n結果: 2026_photo-1.jpg, 2026_photo-2.jpg (0項衝突)。';

  @override
  String get helpLimitsTitle => '驗證與限制';

  @override
  String get helpLimitsContent => '僅為純文字字串模擬工具。不請求裝置儲存權限，不存取檔案系統，不實際變更磁碟檔案名稱。';

  @override
  String get helpDataAndPrivacyTitle => '本機資料與廣告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有檔名僅在記憶體中處理，絕不上傳或儲存。螢幕下方顯示標準Google AdMob橫幅廣告。';
}
