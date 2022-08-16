import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: const AssetImage("assets/image_card.png")),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                offset: const Offset(0, 11),
                blurRadius: 50,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        "Kezia Anne",
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/icon_plane.png",
                  width: 24,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "Pay",
                  style:
                      whiteTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 41,
            ),
            Text(
              "Balance",
              style: whiteTextStyle.copyWith(fontWeight: light),
            ),
            Text(
              "IDR 280.000.000",
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 26),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus 🎉",
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          "We give you early credit so that\nyou can buy a flight ticket",
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        width: 220,
        height: 55,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                )),
            onPressed: () {
              Navigator.pushNamed(context, '/main-page');
            },
            child: Text(
              "Start Fly Now",
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            )),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
