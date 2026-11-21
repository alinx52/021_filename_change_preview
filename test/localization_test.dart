import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all required ARB files have the complete English key set', () {
    final l10nDir = Directory('lib/l10n');
    final enFile = File('${l10nDir.path}/app_en.arb');
    expect(enFile.existsSync(), isTrue);

    final enJson = jsonDecode(enFile.readAsStringSync()) as Map<String, dynamic>;
    final enKeys = enJson.keys.where((k) => !k.startsWith('@')).toSet();

    const expectedLocales = [
      'ko',
      'ja',
      'zh_Hans',
      'zh_Hant',
      'es',
      'fr',
      'de',
      'pt_BR',
      'it',
      'nl',
      'ru',
      'ar',
      'hi',
      'id',
      'vi',
      'pt',
      'zh',
    ];

    for (final loc in expectedLocales) {
      final arbFile = File('${l10nDir.path}/app_$loc.arb');
      expect(arbFile.existsSync(), isTrue, reason: 'Missing ARB for $loc');
      final arbJson = jsonDecode(arbFile.readAsStringSync()) as Map<String, dynamic>;
      final arbKeys = arbJson.keys.where((k) => !k.startsWith('@')).toSet();
      expect(arbKeys, equals(enKeys), reason: 'Key mismatch in $loc');
    }
  });
}
