import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';

class RandkingCardWidget extends StatelessWidget {
  final int index;
  final String title;
  final String info;
  final double enther;
  final double pers;
  const RandkingCardWidget({
    Key? key,
    required this.index,
    required this.title,
    required this.info,
    required this.enther,
    required this.pers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$index', style: TextStyle(color: Colors.white.withOpacity(0.8))),
        const SizedBox(width: kDefaultExThinPadding),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            rankingCards[index].imageUrl,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: kDefaultExThinPadding),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Text(
              info,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$enther',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Text(
              '$pers %',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
