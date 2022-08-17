import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget customImage(){}
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        // height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image_destination1.png"),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
        ],
      ),
    );
  }
}
