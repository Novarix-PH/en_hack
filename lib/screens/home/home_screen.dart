import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/images/cake_logo_pic_1.png'),
                ),
                Column(
                  children: [

                    Text(
                      'Cake It Easy',
                      style: TextStyle(
                        color: Color(0xFF243A5B),
                        fontSize: 14.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      decoration: ShapeDecoration(
                        color: Color(0xFF6DA8FC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child:   Text(
                        'Fashion',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.card_giftcard,
                  color: Color(0xFF6DA8FC),
                ),
                Icon(
                  Icons.notifications,
                  color: Color(0xFF6DA8FC),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
