import 'package:flutter/material.dart';
import '../config/themes.dart';

class BottomBarButton extends StatelessWidget {
  final int index;
  final int currenSelectedIndex;
  final VoidCallback onPress;
  final IconData iconData;
  const BottomBarButton({
    Key? key,
    required this.index,
    required this.currenSelectedIndex,
    required this.onPress,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: Icon(
        iconData,
        size: 28.0,
        color: currenSelectedIndex == index ? ColorConstant.primaryColor : ColorConstant.blueLight,
      ),
    );
  }
}
