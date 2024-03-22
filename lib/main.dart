import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'config/routes/app_router.dart';
import 'generated/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('uz', 'O\'zbek'),
        Locale('en', 'English'),
        Locale('ru', 'Русский'),
      ],
      path: 'assets/locale',
      useOnlyLangCode: true,
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('uz'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nampro app',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEDEEED),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: _router.config(),
    );
  }
}
