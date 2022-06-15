// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Mahdinaghikhani`
  String get home_mahdinaghkhani {
    return Intl.message(
      'Mahdinaghikhani',
      name: 'home_mahdinaghkhani',
      desc: '',
      args: [],
    );
  }

  /// `Discourd`
  String get home_Discourd {
    return Intl.message(
      'Discourd',
      name: 'home_Discourd',
      desc: '',
      args: [],
    );
  }

  /// `Whatss app`
  String get home_Whatsspp {
    return Intl.message(
      'Whatss app',
      name: 'home_Whatsspp',
      desc: '',
      args: [],
    );
  }

  /// `Telegeram`
  String get home_telegram {
    return Intl.message(
      'Telegeram',
      name: 'home_telegram',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get home_hello {
    return Intl.message(
      'Hello!',
      name: 'home_hello',
      desc: '',
      args: [],
    );
  }

  /// `I'm Flutter Developer`
  String get home_imflutterdeveloper {
    return Intl.message(
      'I\'m Flutter Developer',
      name: 'home_imflutterdeveloper',
      desc: '',
      args: [],
    );
  }

  /// `A freelance mobile app developer`
  String get home_afreelancermobile {
    return Intl.message(
      'A freelance mobile app developer',
      name: 'home_afreelancermobile',
      desc: '',
      args: [],
    );
  }

  /// `Hire me !`
  String get home_hireme {
    return Intl.message(
      'Hire me !',
      name: 'home_hireme',
      desc: '',
      args: [],
    );
  }

  /// `My Linkdin`
  String get homelinkdin {
    return Intl.message(
      'My Linkdin',
      name: 'homelinkdin',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get home_about_me {
    return Intl.message(
      'About me',
      name: 'home_about_me',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fa'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
