import 'package:flutter/material.dart';

import 'design_system.dart';
import 'home_page.dart';
import 'l10n/app_localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');
  String _designStyle = appDesignStyle;

  void _changeLocale(Locale locale) {
    setState(() => _locale = locale);
  }

  void _changeDesignStyle(String style) {
    setState(() => _designStyle = style);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: buildAppTheme(Brightness.light, styleOverride: _designStyle),
      darkTheme: buildAppTheme(Brightness.dark, styleOverride: _designStyle),
      themeMode: appThemeMode,
      home: HomePage(
        locale: _locale,
        onLocaleChanged: _changeLocale,
        designStyle: _designStyle,
        onDesignStyleChanged: _changeDesignStyle,
      ),
    );
  }
}
