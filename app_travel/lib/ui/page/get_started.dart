import 'package:app_travel/shared/theme.dart';
import 'package:app_travel/ui/widgets/custom_button.dart';
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
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage("assets/image_get_started.png"),
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
                CustomButton(
                    width: 220,
                    margin: const EdgeInsets.only(top: 50, bottom: 80),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                    title: "Get Started")
              ],
            ),
          )
        ],
      ),
    );
  }
}
