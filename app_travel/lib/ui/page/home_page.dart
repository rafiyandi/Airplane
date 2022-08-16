import 'package:app_travel/shared/theme.dart';
import 'package:app_travel/ui/widgets/destination_card.dart';
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

    Widget popularDestination() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              imageUrl: "assets/image_destination1.png",
              city: "Lake Ciliwung",
              name: "Tangerang",
              rating: 4.8,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination2.png",
              city: "White Houses",
              name: "Spain",
              rating: 4.7,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination3.png",
              city: "Hill Heyo",
              name: "Monaco",
              rating: 4.8,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination4.png",
              city: "Menarra",
              name: "Japan",
              rating: 5.0,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination5.png",
              city: "Payung Teduh",
              name: "Singapore",
              rating: 4.8,
            ),
            DestinationCard(
              imageUrl: "assets/image_destination1.png",
              city: "Lake Ciliwung",
              name: "Tangerang",
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
      ],
    );
  }
}
