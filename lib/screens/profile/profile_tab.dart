import 'package:en_hack/config/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.bookmark),
                    Row(
                      children: const [
                        Icon(Icons.email),
                        Icon(Icons.settings),
                      ],
                    )
                  ],
                ),
              ),
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
              const SizedBox(height: 10),
              const Text(
                "Denver Dalman",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                "@denver_dalman",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        "26",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 1,
                    color: ColorConstant.primaryColor,
                  ),
                  Column(
                    children: const [
                      Text(
                        "10",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text("You are a Business Owner"),
                        SizedBox(width: 5),
                        Icon(Icons.info, size: 15)
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right, size: 20, color: ColorConstant.primaryColor,)
                  ],
                ),
                const SizedBox(height: 5),
                LinearProgressIndicator(
                  value: 0.5,
                  minHeight: 10,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              const Text(
                'Badges',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEAF1FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFC7DEFE)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          FontAwesomeIcons.award,
                          color: Colors.orangeAccent,
                          size: 17,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Achiever',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFEAF1FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFFC7DEFE)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          FontAwesomeIcons.book,
                          color: Colors.red,
                          size: 17,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Reader',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                _CardOptions(
                  title: 'Personal Information',
                  iconData: Icons.info,
                  onTap: () {},
                ),
                _CardOptions(
                  title: 'Wallet',
                  iconData: Icons.wallet,
                  onTap: () {},
                ),
                _CardOptions(
                  title: 'My Businesses',
                  iconData: Icons.store,
                  onTap: () {},
                ),
                _CardOptions(
                  title: 'Growth Tracks',
                  iconData: Icons.format_list_bulleted,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CardOptions extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData iconData;

  const _CardOptions({
    required this.title,
    required this.onTap,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.blueLight,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        iconData,
                        size: 20.0,
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        flex: 8,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: ColorConstant.primaryColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5.0),
                ],
              ),
            ),
            //Image.asset(imageUri)
          ],
        ),
      ),
    );
  }
}
