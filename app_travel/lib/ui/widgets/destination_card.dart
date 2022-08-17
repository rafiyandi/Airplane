import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    Key? key,
    this.rating = 0.0,
    required this.imageUrl,
    required this.name,
    required this.city,
  }) : super(key: key);
  final double rating;
  final String imageUrl;
  final String name;
  final String city;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              width: 200,
              height: 323,
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 20),
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 180,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 55,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(18)),
                          color: kWhiteColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: const EdgeInsets.only(right: 2),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          "assets/icon_star.png"))),
                            ),
                            Text(
                              rating.toString(),
                              style:
                                  blackTextStyle.copyWith(fontWeight: medium),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        Text(
                          city,
                          style: greyTextStyle.copyWith(fontWeight: light),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
