import 'package:en_hack/screens/business_association/association_tab.dart';
import 'package:en_hack/screens/chat/chat_tab.dart';
import 'package:en_hack/screens/home/home_tab.dart';
import 'package:flutter/material.dart';

const screens = [
  HomeTab(),
  ChatTab(),
  BusinessAssociationTab(),
  _TemporaryScreen(),
];

const double kWidthSideMenu = 100.0;
const double kHeightAppBar = 100.0;
const double KHeightBottomBar = 60.0;

// Padding
const double kDefaultExThinPadding = 8.0;
const double kDefaultThinPadding = 12.0;
const double kDefaultPadding = 16.0;
const double kDefaultWidePadding = 24.0;
const double kDefaultFatPadding = 40.0;

const bottomBarButtons = [
  Icons.home_outlined,
  Icons.chat,
  Icons.business,
  Icons.person,
];

class _TemporaryScreen extends StatefulWidget {
  const _TemporaryScreen({Key? key}) : super(key: key);

  @override
  State<_TemporaryScreen> createState() => _TemporaryScreenState();
}

class _TemporaryScreenState extends State<_TemporaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
