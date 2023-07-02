import 'package:en_hack/config/themes.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 90.0,
                  height: 90.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset("assets/images/profile/denver.jpg"),
                    ),
                  ),
                ),
                const Text("Denver Dalman", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                const Text("@denver_dalman", style: TextStyle(fontSize: 14),),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text("26", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("Following", style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: ColorConstant.primaryColor,
                    ),
                    Column(
                      children: const [
                        Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                        Text("Followers", style: TextStyle(fontSize: 14),),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
