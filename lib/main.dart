import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/core/routes.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const QuranApp(),
  ));
}

class QuranApp extends StatefulWidget {
  const QuranApp({super.key});

  @override
  State<QuranApp> createState() => _QuranAppState();
}

class _QuranAppState extends State<QuranApp> {
  // Default locale
  Locale _locale = const Locale('ar'); // Set default to English

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.router,
      locale: DevicePreview.locale(context), // دعم اللغات
      builder: DevicePreview.appBuilder,

      debugShowCheckedModeBanner: false,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('ar', ''), // Arabic
      ],
      title: 'QuranApp',
    );
  }
}
