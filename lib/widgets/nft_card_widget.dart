import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';

import 'glassmorphism.dart';

class NFTCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int favoriteNumber;
  final VoidCallback onPress;
  const NFTCardWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.favoriteNumber,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Glassmorphism(
        blue: 20,
        opacity: 0.1,
        radius: 20,
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(kDefaultExThinPadding),
          child: Column(
            children: [
              SizedBox(
                height: 200 * .8,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 12,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    '$favoriteNumber',
                    style: TextStyle(color: Colors.white.withOpacity(0.8)),
                  )
                ],
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
