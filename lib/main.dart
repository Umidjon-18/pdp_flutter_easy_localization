import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pdp_flutter_lessons/home_page.dart';

import 'homework_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('ru', 'RU'),
          Locale('uz', 'UZ'),
          Locale('fr', 'FR'),
          Locale('ko', 'KO'),
          Locale('ja', 'JA')
        ],
        path: './assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomeworkPage(),
    );
  }
}
