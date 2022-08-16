import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const CustomBottomNavigation({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: 32,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparentColor),
        ),
      ],
    );
  }
}
