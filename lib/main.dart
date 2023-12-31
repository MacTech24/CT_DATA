import 'package:ct_data/screens/Onboarding/onboarding_screen.dart';
import 'package:ct_data/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(
          primaryColor: white, appBarTheme: const AppBarTheme(color: white)),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
