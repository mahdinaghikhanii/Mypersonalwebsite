import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  Locale _currentLocale = const Locale('en');
  Locale get language => _currentLocale;

  void setLanguage(String language) async {
    var perfs = await SharedPreferences.getInstance();
    if (_currentLocale == Locale(language.toString())) {
      return;
    }

    if (Locale(language.toString()) == const Locale('fa')) {
      _currentLocale = const Locale("fa");
      await perfs.setString('la', 'fa');
    } else {
      _currentLocale = const Locale('en');
      await perfs.setString("la", 'en');
    }
    notifyListeners();
  }

  featchlocal() async {
    var perfs = await SharedPreferences.getInstance();
    if (perfs.getString('la') == null) {
      return _currentLocale = const Locale("en");
    } else {
      return _currentLocale = Locale(perfs.getString('la').toString());
    }
  }
}
