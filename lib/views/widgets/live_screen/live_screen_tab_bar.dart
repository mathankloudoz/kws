// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_toggle_tab/helper.dart';

class LiveScreenTabBar extends StatefulWidget {
  final String title;
  const LiveScreenTabBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _LiveScreenTabBarState createState() => _LiveScreenTabBarState();
}

class _LiveScreenTabBarState extends State<LiveScreenTabBar> {
  var _tabTextIconIndexSelected = 0;

  var _listGenderText = ["Winners", "Upcomming Draws"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterToggleTab(
                    width: 75,
                    borderRadius: 15,
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    unSelectedTextStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    labels: _listGenderText,
                    selectedIndex: _tabTextIconIndexSelected,
                    selectedLabelIndex: (index) {
                      setState(() {
                        _tabTextIconIndexSelected = index;
                      });
                    },
                  ),
                ],
              ),
            ),

            /// Icon with Text Button Sample
            SizedBox(
              height: heightInPercent(3, context),
            ),
            Text(
              " ${_listGenderText[_tabTextIconIndexSelected]} ",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: heightInPercent(3, context),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
