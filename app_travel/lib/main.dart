import 'package:app_travel/ui/page/bonus_page.dart';
import 'package:app_travel/ui/page/detail_page.dart';
import 'package:app_travel/ui/page/get_started.dart';
import 'package:app_travel/ui/page/main_page.dart';
import 'package:app_travel/ui/page/sign_up_page.dart';
import 'package:app_travel/ui/page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main-page': (context) => MainPage(),
        '/detail': (context) => DetailPage()
      },
    );
  }
}
