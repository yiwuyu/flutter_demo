import 'package:flutter/material.dart';

class LocaleModel extends ChangeNotifier {
  int _localeIndex;

  int get localeIndex => _localeIndex;

  LocaleModel() {
    _localeIndex = 0;
  }

  static const localeList = ['en', 'zh_CN', 'zh_TW'];

  static String getLocaleName(index) {
    return ['English', '简体中文', '繁體中文'][index];
  }

  Locale get locale {
    var value = localeList[_localeIndex].split('_');
    return Locale(value[0], value.length == 2 ? value[1] : '');
  }

  void switchLocale(index) {
    _localeIndex = index;
    notifyListeners();
  }
}
