import 'package:en_hack/screens/home/product/product_check_list_screen.dart';
import 'package:flutter/material.dart';

import '../../../config/themes.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context); // Navigate back when the back arrow is pressed
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Product",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              children: [

                const SizedBox(height: 20.0),
                _CardChoice(
                  title: 'Expand Product Range',
                  isLocked: false,
                  isMostRecommended: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductCheckListScreen(),
                      ),
                    );
                  },
                ),
                _CardChoice(
                  title: 'Improve Product Presentation',
                  isLocked: false,
                  isMostRecommended: false,
                  onTap: () {},
                ),
                _CardChoice(
                  title: 'Enhance Product Quality and Taste',
                  isLocked: false,
                  isMostRecommended: false,
                  onTap: () {},
                ),
                _CardChoice(
                  title: 'Offer Product Customization',
                  isLocked: false,
                  isMostRecommended: false,
                  onTap: () {},
                ),
                _CardChoice(
                  title: 'Collaborate with Local Businesses',
                  isLocked: false,
                  isMostRecommended: false,
                  onTap: () {},
                ),
                _CardChoice(
                  title: 'Implement Loyalty Program',
                  isLocked: false,
                  isMostRecommended: false,
                  onTap: () {},
                ),
                _CardChoice(
                  title: 'Expand Product Range',
                  isLocked: false,
                  isMostRecommended: false,
                  onTap: () {},
                ),

                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                    child: Text("Create your own Product Growth Track", style: TextStyle(fontWeight: FontWeight.bold),)),
                const SizedBox(height: 10),
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: ColorConstant.blueLight,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardChoice extends StatelessWidget {
  final String title;
  final bool? isMostRecommended;
  final bool? isLocked;
  final Function onTap;

  const _CardChoice({
    required this.title,
    this.isMostRecommended,
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
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
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