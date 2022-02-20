import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/widgets/glassmorphism.dart';

import 'home_screen.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/Colorful-Abstract-iPhone-Wallpapers-2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Welcome to\n NFT Marketplace",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(), // 空行
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Glassmorphism(
                    blue: 15,
                    opacity: .2,
                    radius: 20,
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Column(
                        children: [
                          const Text(
                            "Explore and Mint NFTs",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: kDefaultExThinPadding),
                          Text(
                            "You can buy and sell the NFTs of the best artists in the world.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          Glassmorphism(
                              blue: 20,
                              opacity: .1,
                              radius: 50,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: kDefaultExThinPadding,
                                      horizontal: kDefaultPadding),
                                  child: const Text(
                                    "Get start now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
