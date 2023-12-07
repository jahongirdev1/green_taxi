import 'package:flutter/material.dart';
import '../../feature/auth/registration.dart';
import '../localization/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: const Locale('uz'),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      title: 'Green Taxi',
      home: const Registration(),
    );
  }
}
