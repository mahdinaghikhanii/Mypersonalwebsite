import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';

class ConfigTheme {
  String faPrimaryFontFamily = "IranYekan";
  late final Color scafoldColor;
  late final Brightness brightness;

  ConfigTheme.light() {
    return;
  }

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      textTheme: TextTheme(
          headline4:
              TextStyle(fontSize: 14, color: isDarkTheme ? kwhite : kblack),
          headline6: const TextStyle(
              fontWeight: FontWeight.w800, fontSize: 26, color: Colors.white),
          bodyText1: TextStyle(
            fontSize: 16,
            color: isDarkTheme ? kwhite : kblack,
          ),
          subtitle1: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          subtitle2: const TextStyle(
            color: lightblack,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          button: TextStyle(
              color: isDarkTheme ? kwhite : kblack,
              fontSize: Constans.fontButtonSisze),
          caption:
              TextStyle(fontSize: 20, color: isDarkTheme ? kwhite : kblack),
          headlineLarge: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: korange),
          headline5: const TextStyle(
            fontWeight: FontWeight.w800,
            height: 0.9,
            fontSize: 50,
          )),
      primaryColor: isDarkTheme ? Colors.black : kwhite,
      backgroundColor: isDarkTheme ? Colors.black : kwhite,
      scaffoldBackgroundColor: isDarkTheme ? kblack : kwhite,
      indicatorColor:
          isDarkTheme ? const Color(0xff0E1D36) : const Color(0xffCBDCF8),
      hintColor: isDarkTheme ? grey : grey,
      highlightColor: isDarkTheme ? const Color(0xff372901) : grey,
      hoverColor:
          isDarkTheme ? const Color(0xff3A3A3B) : const Color(0xff4285F4),
      focusColor:
          isDarkTheme ? const Color(0xff0B2512) : const Color(0xffA8DAB5),
      appBarTheme: AppBarTheme(backgroundColor: isDarkTheme ? kblack : kwhite),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? const Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
    );
  }

  TextTheme get enPrimaryTextTheme => const TextTheme(
      button: TextStyle(color: kwhite, fontSize: Constans.fontButtonSisze),
      bodyText1: TextStyle(fontSize: 14, color: grey),
      headline6:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblack),
      headline5:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: korange));

  TextTheme get faPrimaryTextTheme => const TextTheme();
}
