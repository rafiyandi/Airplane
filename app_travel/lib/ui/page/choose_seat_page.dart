import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          "Select Your\nFavorite Seat",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget setStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icon_available.png"),
                    ),
                  ),
                ),
                Text("Availabe", style: blackTextStyle),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6, left: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icon_selected.png"),
                    ),
                  ),
                ),
                Text("Availabe", style: blackTextStyle),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6, left: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icon_unavailable.png"),
                    ),
                  ),
                ),
                Text("Availabe", style: blackTextStyle),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        title(),
        setStatus(),
      ],
    ));
  }
}
