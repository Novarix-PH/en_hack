import 'dart:ui';
import 'package:en_hack/screens/home/product/product_screen.dart';
import 'package:en_hack/widgets/container_widgets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../config/themes.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<Widget> _listImages = [
    const _ContainerImage(imageUrl: "assets/images/carousel_images/carousel_images_1.png"),
    const _ContainerImage(imageUrl: "assets/images/carousel_images/carousel_images_2.png"),
    const _ContainerImage(imageUrl: "assets/images/carousel_images/carousel_images_3.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            //region Header
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/images/cake_logo_pic_1.png'),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Cake It Easy',
                              style: TextStyle(
                                color: Color(0xFF243A5B),
                                fontSize: 22.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            Wrap(
                              runSpacing: 5.0,
                              spacing: 5.0,
                              children: const [
                                ContainerText(text: "Fashion"),
                                ContainerText(text: "Cakes"),
                                ContainerText(text: "Pastries"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //const Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.card_giftcard,
                      color: ColorConstant.primaryColor,
                    ),
                    Icon(
                      Icons.notifications,
                      color: ColorConstant.primaryColor,
                    )
                  ],
                ),
              ],
            ),
            //endregion
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.blueLight,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text("Offer Product Customization"),
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
                    backgroundColor: Colors.blue[200],
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            //region Carousel
            SizedBox(
              height: 150.0,
              child: CarouselSlider(
                items: _listImages,
                options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1.0,
                  autoPlayAnimationDuration: const Duration(milliseconds: 100),
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),
            //endregion

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Choose Growth Track",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Icon(
                  Icons.add,
                  color: ColorConstant.primaryColor,
                )
              ],
            ),
            Container(
              height: 1,
              color: ColorConstant.primaryColor,
            ),

            const SizedBox(height: 10),
            _CardGrowthTrack(
              title: 'PRODUCT',
              imageUri: "assets/images/card_images/card_image_pic_2.png",
              listSubText: const ["Enhancement", "Launching", "Brand Integration"],
              isMostRecommended: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductScreen(),
                  ),
                );
              },
            ),
            _CardGrowthTrack(
              title: 'BRANDING',
              imageUri: "assets/images/card_images/card_image_pic_1.png",
              listSubText: const ["Identity", "Brand Message", "Visual Design", "aesthetic"],
              onTap: () {},
            ),

            _CardGrowthTrack(
              title: 'MARKETING',
              imageUri: "assets/images/card_images/card_image_pic_3.png",
              listSubText: const ["Brand Positioning", "Campaigns", "Assessment"],
              onTap: () {},
            ),
            _CardGrowthTrack(
              title: 'EXPANSION',
              imageUri: "assets/images/card_images/card_image_pic_4.png",
              onTap: () {},
            ),
            _CardGrowthTrack(
              title: 'OPERATIONS',
              imageUri: "assets/images/card_images/card_image_pic_4.png",
              onTap: () {},
            ),
            _CardGrowthTrack(
              title: 'FINANCE',
              imageUri: "assets/images/card_images/card_image_pic_5.png",
              isLocked: true,
              onTap: () {},
            ),
            _CardGrowthTrack(
              title: 'OPERATIONS',
              imageUri: "assets/images/card_images/card_image_pic_6.jpg",
              isLocked: true,
              onTap: () {},
            ),
            _CardGrowthTrack(
              title: 'DATA ANALYTICS',
              imageUri: "assets/images/card_images/card_image_pic_7.png",
              isLocked: true,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _ContainerImage extends StatelessWidget {
  final String imageUrl;

  const _ContainerImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, child: Image.asset(imageUrl));
  }
}

class _CardGrowthTrack extends StatelessWidget {
  final String title;
  final bool? isMostRecommended;
  final String imageUri;
  final List<String>? listSubText;
  final bool? isLocked;
  final Function onTap;

  const _CardGrowthTrack({
    required this.title,
    required this.imageUri,
    this.isMostRecommended,
    this.listSubText,
    this.isLocked,
    required this.onTap,
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
                      Expanded(
                        flex: 8,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Visibility(
                              visible: isMostRecommended ?? false,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFF6A6A),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                                child: const Text(
                                  "MOST RECOMMENDED",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: isLocked ?? false,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                                child: const Text(
                                  "UNLOCK TO USE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          isLocked ?? false ? Icons.lock : Icons.keyboard_arrow_right,
                          color: isLocked ?? false ? Colors.black : ColorConstant.primaryColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: double.infinity,
                    child: Visibility(
                      visible: listSubText?.isNotEmpty ?? false,
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        runSpacing: 5.0,
                        spacing: 5.0,
                        children: listSubText == null ? [] : listSubText!.map((e) => ContainerText(text: e)).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(imageUri)
          ],
        ),
      ),
    );
  }
}
