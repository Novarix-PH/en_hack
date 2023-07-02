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
          tabs:  <Widget>[
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text("ASK", style: TextStyle(color: Colors.black),)),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text("HISTORY", style: TextStyle(color: Colors.black),)),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children:  [
              Container(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}
