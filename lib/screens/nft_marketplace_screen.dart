import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/widgets/glassmorphism.dart';
import 'package:nft_marketplace/widgets/nft_card_widget.dart';
import 'package:nft_marketplace/widgets/theme_card_widget.dart';

class NFTTMarketplaceScreen extends StatelessWidget {
  const NFTTMarketplaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          const Center(
            child: Text(
              "NFT Marketplace",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultExThinPadding),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: themeCardModels.length,
                itemBuilder: (_, index) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: ThemeCardWidget(
                        imageUrl: themeCardModels[index].imageUrl,
                        title: themeCardModels[index].title,
                        onPress: () {
                          print("hello");
                        },
                      ),
                    )),
          ),
          const _TitleWidget(title: "Trending collection"),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultExThinPadding),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingCards.length,
                itemBuilder: (_, index) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: NFTCardWidget(
                        imageUrl: trendingCards[index].imageUrl,
                        name: trendingCards[index].name,
                        favoriteNumber: trendingCards[index].favoriteNumber,
                        onPress: () {},
                      ),
                    )),
          ),
          const _TitleWidget(title: "Top seller"),
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultExThinPadding),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topsellCards.length,
                itemBuilder: (_, index) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: NFTCardWidget(
                        imageUrl: topsellCards[index].imageUrl,
                        name: topsellCards[index].name,
                        favoriteNumber: topsellCards[index].favoriteNumber,
                        onPress: () {},
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  final String title;
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
