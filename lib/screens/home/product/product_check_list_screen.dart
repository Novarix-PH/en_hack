import 'package:flutter/material.dart';

import '../../../config/themes.dart';

class ProductCheckListScreen extends StatefulWidget {
  const ProductCheckListScreen({Key? key}) : super(key: key);

  @override
  State<ProductCheckListScreen> createState() => _ProductCheckListScreenState();
}

class _ProductCheckListScreenState extends State<ProductCheckListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back when the back arrow is pressed
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Product: Check List",
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstant.blueLight,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      "Offer Product Customization",
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: ColorConstant.blueLight,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(height: 20.0),
                _CardCheckList(
                  title: 'Expand Product Range',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Develop Clear Guidelines',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Consultation and Communication',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Showcase Examples and Inspirations',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Online Ordering System',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Provide Visual Representations',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Train Your Staff',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Efficient Production Process',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Quality Control',
                  onTap: () {},
                ),
                _CardCheckList(
                  title: 'Feedback and Continuous Imrovement',
                  onTap: () {},
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "USER GROWTH TRACK",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardCheckList extends StatelessWidget {
  final String title;
  final Function onTap;

  const _CardCheckList({
    required this.title,
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
          //color: ColorConstant.blueLight,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Checkbox(
                value: false,
                onChanged: (onChanged) {},
              ),
            ),
            Expanded(
                flex: 8,
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )),
            const Expanded(flex: 2, child: Icon(Icons.info))
          ],
        ),
      ),
    );
  }
}
