import 'package:flutter/material.dart';

class LiveScreenTabBar extends StatefulWidget {
  const LiveScreenTabBar({super.key});

  @override
  State<LiveScreenTabBar> createState() => _LiveScreenTabBarState();
}

class _LiveScreenTabBarState extends State<LiveScreenTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(text: 'Winner'),
                Tab(text: 'Upcoming Drawers'),
              ])
            ],
          ),
        ));
  }
}
