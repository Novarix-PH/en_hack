import 'package:en_hack/screens/home/home_screen.dart';
import 'package:en_hack/screens/login/login_screen.dart';
import 'package:en_hack/utilities/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: UIFontStyles.montserratRegular),
      home: const HomeScreen(),
    );
  }
}
