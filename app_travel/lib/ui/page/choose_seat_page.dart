import 'package:app_travel/shared/theme.dart';
import 'package:app_travel/ui/widgets/seat_item.dart';
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

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 22),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            //NOTE:SEAT INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "A",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "B",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Text(
                    " ",
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "C",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "D",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            //NOTE : SEAT 1\
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SeatItem(),
                SeatItem(),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "1",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(),
                SeatItem(),
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
        selectSeat(),
      ],
    ));
  }
}
