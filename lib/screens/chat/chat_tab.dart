import 'package:en_hack/config/themes.dart';
import 'package:flutter/material.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "ASK",
                  style: TextStyle(color: Colors.black),
                )),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  "HISTORY",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
               const _ContainerAsk(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContainerAsk extends StatelessWidget {
  const _ContainerAsk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.blueLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              SizedBox(height: 10.0),
              _CardChat(
                text: "How to make my business standout?",
                leftRight: 1,
              ),
              SizedBox(width: 10.0),
              _CardChat(
                text:
                    "Consistency, quality, and creativity are key when it comes to making your cake business stand out. Continuously strive to innovate, listen to customer feedback, and adapt your offerings to meet their evolving preferences and desires.",
                leftRight: 2,
              ),
              SizedBox(height: 10),

            ],
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Ask a Questions", style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type something...",
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
                    ),
                    const Expanded(flex: 2, child: Icon(Icons.send_rounded))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CardChat extends StatelessWidget {
  final String text;
  final int leftRight;

  const _CardChat({Key? key, required this.text, required this.leftRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: leftRight == 1 ? 60 : 10, right: leftRight == 2 ? 60 : 10),
      child: Card(
        elevation: 5.0,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Text(text),
        ),
      ),
    );
  }
}
