import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image_get_started.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a Bird",
                  style:
                      whiteTextStyle.copyWith(fontSize: 32, fontWeight: medium),
                ),
                Text(
                  "Explore new world with us and let\nyourself get an amazing experiences",
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 220,
                  height: 55,
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(defaultRadius),
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      child: Text(
                        "Get Started",
                        style: whiteTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
