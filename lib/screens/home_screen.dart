import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:nft_marketplace/config/constants.dart';
import 'package:nft_marketplace/models/bottom_bar_button.dart';
import 'package:nft_marketplace/widgets/glassmorphism.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;
  // handle onPress Bottom Bar Button
  void onChangeSelectedIndex(int index) {
    setState(() {
      selectIndex = index;
      print(selectIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: screens[selectIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        child: HexagonWidget.pointy(
          width: 50,
          color: Colors.white.withOpacity(.8),
          elevation: 8,
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: backgroundColor,
        child: Glassmorphism(
          blue: 20,
          opacity: .2,
          radius: 0,
          child: SizedBox(
            height: KheightBottomBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: kDefaultExThinPadding),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(0);
                  },
                  iconData: bottomBarButtons[0],
                  index: 0,
                  currenSelectedIndex: selectIndex,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(1);
                  },
                  iconData: bottomBarButtons[1],
                  index: 1,
                  currenSelectedIndex: selectIndex,
                ),
                const SizedBox(height: kDefaultFatPadding),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(2);
                  },
                  iconData: bottomBarButtons[2],
                  index: 2,
                  currenSelectedIndex: selectIndex,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(3);
                  },
                  iconData: bottomBarButtons[3],
                  index: 3,
                  currenSelectedIndex: selectIndex,
                ),
                const SizedBox(height: kDefaultExThinPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
