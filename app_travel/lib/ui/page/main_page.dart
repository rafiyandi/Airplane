import 'package:app_travel/shared/theme.dart';
import 'package:app_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, bottom: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: const [
              CustomBottomNavigation(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigation(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigation(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigation(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            const Text("Main Page"),
            customBottomNavigation(),
          ],
        ));
  }
}
