import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';
import 'provider/language_provider.dart';
import 'views/home/home_views.dart';

LanguageProvider languageProvider = LanguageProvider();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await languageProvider.featchlocal();
  runApp(MyApp(languageProvider: languageProvider));
}

class MyApp extends StatelessWidget {
  final LanguageProvider languageProvider;
  const MyApp({Key? key, required this.languageProvider}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => LanguageProvider())
        ],
        child: Consumer<LanguageProvider>(
            builder: (BuildContext context, value, Widget? child) {
          return MaterialApp(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: value.language,
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            title: 'Mahdinaghikhani',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomeView(),
          );
        }));
  }
}
