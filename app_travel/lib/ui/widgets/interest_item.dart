import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  const InterestItem({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icon_check.png"),
              ),
            ),
          ),
          SizedBox(width: 6),
          Text(text, style: blackTextStyle),
        ],
      ),
    );
  }
}
