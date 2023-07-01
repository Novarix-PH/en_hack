import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../config/themes.dart';
import '../widgets/bottom_bar_button.dart';
import '../widgets/glassmorphism.dart';

class HomeMainTabScreen extends StatefulWidget {
  const HomeMainTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainTabScreen> createState() => _HomeMainTabScreenState();
}

class _HomeMainTabScreenState extends State<HomeMainTabScreen> {
  int selectedIndex = 0;

  // handle onPress Bottom Bar Button
  void onChangeSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        //elevation: 0.0,
        centerTitle: true,
        title: Text(
          "En-Biz",
          style: TextStyle(
            color: ColorConstant.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        actions: [
         /* IconButton(
            icon: Icon(
              Icons.notifications,
              color: ColorConstant.primaryColor,
              size: 30,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),*/
        ],
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Glassmorphism(
          blur: 20.0,
          opacity: 0.2,
          radius: 0,
          child: SizedBox(
            height: KHeightBottomBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: kDefaultExThinPadding,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(0);
                  },
                  iconData: bottomBarButtons[0],
                  index: 0,
                  currenSelectedIndex: selectedIndex,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(1);
                  },
                  iconData: bottomBarButtons[1],
                  index: 1,
                  currenSelectedIndex: selectedIndex,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(2);
                  },
                  iconData: bottomBarButtons[2],
                  index: 2,
                  currenSelectedIndex: selectedIndex,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(3);
                  },
                  iconData: bottomBarButtons[3],
                  index: 3,
                  currenSelectedIndex: selectedIndex,
                ),
                BottomBarButton(
                  onPress: () {
                    onChangeSelectedIndex(4);
                  },
                  iconData: bottomBarButtons[4],
                  index: 4,
                  currenSelectedIndex: selectedIndex,
                ),
                const SizedBox(
                  width: kDefaultExThinPadding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}