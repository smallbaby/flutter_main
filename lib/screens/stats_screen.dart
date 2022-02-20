import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/widgets/drop_down_stats_button.dart';
import 'package:nft_marketplace/widgets/glassmorphism.dart';
import 'package:nft_marketplace/widgets/randing_card_widget.dart';
import 'package:nft_marketplace/widgets/statsbutton.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding,
          ),
          const Center(
            child: Text(
              "Stats screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatsButtonWidget(
                  title: 'Ranking',
                  isActive: true,
                  onPress: () {},
                  iconData: Icons.stacked_bar_chart),
              StatsButtonWidget(
                  title: 'Activity',
                  isActive: false,
                  onPress: () {},
                  iconData: Icons.local_activity_outlined),
            ],
          ),
          const Divider(
            height: 1.5,
            color: Colors.grey,
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropDownStatsButton(
                  title: 'All categories',
                  onPress: () {},
                  iconData: Icons.category),
              DropDownStatsButton(
                  title: 'Chains', onPress: () {}, iconData: Icons.share),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          Glassmorphism(
              blue: 20,
              opacity: .1,
              radius: 20,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: rankingCards.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                itemBuilder: (_, index) => Container(
                  height: 50,
                  margin: EdgeInsets.only(bottom: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: RandkingCardWidget(
                    title: rankingCards[index].name,
                    index: index,
                    info: 'view info',
                    enther: rankingCards[index].ether,
                    pers: rankingCards[index].percent,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
