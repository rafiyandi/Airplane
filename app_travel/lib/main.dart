import 'package:app_travel/ui/page/get_started.dart';
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
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => SignUpPage(),
      },
    );
  }
}
