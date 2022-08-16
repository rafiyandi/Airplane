import 'dart:async';

import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        (() => Navigator.pushNamed(context, '/get-started')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/icon_plane.png"),
                ),
              ),
            ),
            Text(
              "AIRPLANE",
              style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: medium),
            ),
          ],
        ),
      ),
    );
  }
}
