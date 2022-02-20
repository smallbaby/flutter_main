import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';

import 'glassmorphism.dart';

class DropDownStatsButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPress;
  const DropDownStatsButton({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Glassmorphism(
        blue: 20,
        opacity: .2,
        radius: 40,
        child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultExThinPadding),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 20,
                color: Colors.white.withOpacity(.8),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20,
                color: Colors.white.withOpacity(.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
