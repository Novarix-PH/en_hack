import 'package:en_hack/config/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GuildScreen extends StatefulWidget {
  const GuildScreen({Key? key}) : super(key: key);

  @override
  State<GuildScreen> createState() => _GuildScreenState();
}

class _GuildScreenState extends State<GuildScreen> {
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
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Guild",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/guild/guild_pic_1.png"),
            const SizedBox(height: 10.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Cake Makers Guild",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: ColorConstant.primaryColor,
                    size: 20.0,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              height: 3,
              color: ColorConstant.primaryColor,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Resources",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: ColorConstant.primaryColor,
                    size: 20.0,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(width: 10),
                  _CardResource(
                    imageUri: 'assets/images/guild/guild_pic_2.png',
                    title: 'Where to get suppplies',
                  ),
                  _CardResource(
                    imageUri: 'assets/images/guild/guild_pic_3.png',
                    title: 'Create Cake Vegetables',
                  ),
                  _CardResource(
                    imageUri: 'assets/images/guild/guild_pic_2.png',
                    title: 'Where to get suppplies',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              height: 3,
              color: ColorConstant.primaryColor,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90.0,
                  height: 50.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset("assets/images/profile/denver.jpg"),
                    ),
                  ),
                ),
                const Text("Write something..."),
                const Spacer(),
                const Icon(Icons.photo),
                const SizedBox(width: 20.0),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              height: 3,
              color: ColorConstant.primaryColor,
            ),
            const SizedBox(height: 20.0),
            const _CardPost(
              imagePath: "assets/images/profile/mark_anthony.jpg",
              imagePicPost: "assets/images/guild/guild_pic_2.png",
              name: "Mark Anthony",
              post: "When you achieve success. Do you give anything back to the community?",
            ),
            const _CardPost(
              imagePath: "assets/images/profile/jerika.jpg",
              imagePicPost: "assets/images/guild/guild_pic_2.png",
              hasPhoto: true,
              name: "Jerika Cleto",
              post:
                  "How can you effectively maintain a work-life balance amidst the demanding and unpredictable nature of your entrepreneurial journey?",
            ),
            const _CardPost(
              imagePath: "assets/images/profile/denver.jpg",
              imagePicPost: "assets/images/profile/denver.jpg",
              name: "Denver",
              post: "What do you guys do to stay motivated after a hug setback?",
            ),
          ],
        ),
      ),
    );
  }
}

class _CardResource extends StatelessWidget {
  final String imageUri;
  final String title;

  const _CardResource({Key? key, required this.imageUri, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 200, width: 300, child: Image.asset(imageUri)),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class _CardPost extends StatelessWidget {
  final String name;
  final String post;
  final String imagePath;
  final String imagePicPost;
  final bool? hasPhoto;

  const _CardPost({
    this.name = "Name",
    this.post = "Post",
    this.imagePath = "",
    this.imagePicPost = "",
    this.hasPhoto = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
            child: Row(
              children: [
                SizedBox(
                  width: 90.0,
                  height: 50.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(imagePath),
                    ),
                  ),
                ),
                const SizedBox(width: 0.0),
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Text(
                post,
                maxLines: null,
              )),
          Visibility(
            visible: hasPhoto ?? false,
            child: Image.asset(
              imagePicPost,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const SizedBox(width: 10.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: TextButton(
                  child: Icon(FontAwesomeIcons.heart, color: ColorConstant.primaryColor),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: TextButton(
                  child: Icon(
                    FontAwesomeIcons.comment,
                    color: ColorConstant.primaryColor,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10.0),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Comment...",
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0, style: BorderStyle.solid)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0, style: BorderStyle.solid)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
