import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:wordle_clone/di/init_get_it.dart';
import 'package:wordle_clone/localizations.dart';
import 'package:wordle_clone/pages/home/home_page.dart';
import 'package:wordle_clone/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: localizations,
      path: "assets/translations",
      fallbackLocale: uzLatin,
      child: const OKToast(child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "So'z O'yini",
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
