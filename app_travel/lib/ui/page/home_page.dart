import 'package:app_travel/shared/theme.dart';
import 'package:app_travel/ui/widgets/destination_card.dart';
import 'package:app_travel/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today?",
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              imageUrl: "assets/image_destination1.png",
              city: "Tangerang",
              name: "Lake Ciliwung",
              rating: 4.8,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination2.png",
              name: "White Houses",
              city: "Spain",
              rating: 4.7,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination3.png",
              name: "Hill Heyo",
              city: "Monaco",
              rating: 4.8,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination4.png",
              name: "Menarra",
              city: "Japan",
              rating: 5.0,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination5.png",
              name: "Payung Teduh",
              city: "Singapore",
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 26, left: 24, right: 24, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            const DestinationTile(
              imageUrl: "assets/image_destination6.png",
              name: "Danau Beratan",
              city: "Singajara",
              rating: 4.5,
            ),
            const DestinationTile(
              imageUrl: "assets/image_destination7.png",
              name: "Sydney Opera",
              city: "Australia",
              rating: 4.7,
            ),
            const DestinationTile(
              imageUrl: "assets/image_destination8.png",
              name: "Roma",
              city: "Italy",
              rating: 4.8,
            ),
            const DestinationTile(
              imageUrl: "assets/image_destination9.png",
              name: "Payung Teduh",
              city: "Singapore",
              rating: 4.5,
            ),
            const DestinationTile(
              imageUrl: "assets/image_destination10.png",
              name: "Hill Hey",
              city: "Monaco",
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestinations(), newDestinations()],
    );
  }
}
