import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('vi');
  Locale get locale => _locale;
  void changeLocale(Locale locale) {
    if (_locale == locale) return;

    _locale = locale;
    notifyListeners();
  }
}
