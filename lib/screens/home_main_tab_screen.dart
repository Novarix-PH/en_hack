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

        centerTitle: true,
        title: Text(
          "En-Biz",
          style: TextStyle(
            color: ColorConstant.primaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 18.0,
          ),
        ),
      ),
      body: screens[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              // Add your onPressed functionality here
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                const SizedBox(
                  width: kDefaultFatPadding,
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
