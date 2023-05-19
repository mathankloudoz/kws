import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';

import '../../../model/notification_model.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<notificaitonPage> notify = [
      notificaitonPage(
          'Win a Mercedes - AMG G63',
          'Shop now and Win this exclusive G63 in a',
          'preminum color. China Blue! AI',
          'assets/images/cashprice.png',
          'May 2 ,2023,4:56 PM'),
      notificaitonPage(
          'Win a Smart Watch - AMG G63',
          'Shop now and Win this exclusive G63 in a',
          'preminum color. China Blue! AI',
          'assets/images/cashprice1.png',
          'May 2,2023,4:59 PM'),
      notificaitonPage(
          'Win a Smart Watch - AMG G63',
          'Shop now and Win this exclusive G63 in a',
          'preminum color. China Blue! AI',
          'assets/images/cashprice2.png',
          'May 2,2023,4:59 PM'),
    ];

    List<notificaitonPage> yesterday = [
      notificaitonPage(
          'Win a Mercedes - AMG G63',
          'Shop now and Win this exclusive G63 in a',
          'preminum color. China Blue! AI',
          'assets/images/watch_images2.png',
          'Mar 1 ,2023,3.51 PM'),
      notificaitonPage(
          'Win a Smart Watch - AMG G63',
          'Shop now and Win this exclusive G63 in a',
          'preminum color. China Blue! AI',
          'assets/images/watch_images1.png',
          'Mar 1,2023, 1.56 PM'),
      notificaitonPage(
          'Win a Smart Watch - AMG G63',
          'Shop now and Win this exclusive G63 in a',
          'preminum color. China Blue! AI',
          'assets/images/watch_images3.png',
          'Mar 1,2023, 11:59 AM'),
    ];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: FadeInUp(
                  delay: Duration(milliseconds: 150),
                  child: Text(
                    'Notification',
                    style: headingText.copyWith(
                        color: black,
                        fontSize: 33,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                removeBottom: true,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: notify.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FadeInUp(
                        delay: Duration(milliseconds: 300),
                        child: Container(
                          height: 120,
                          width: double.infinity,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      child: ImageIcon(
                                        AssetImage('assets/images/dot.png'),
                                        size: 65,
                                        color: Color(0xFF1109fd),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25, left: 45),
                                        child: RichText(
                                            text: TextSpan(
                                                text: notify[index].title,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.black),
                                                children: [
                                              TextSpan(
                                                  text: '!!',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: Colors.red))
                                            ]))),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 45, left: 30),
                                      child: Text(
                                        notify[index].subtitle,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 58, left: 30),
                                      child: Text(
                                        notify[index].description,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 275),
                                      child: Container(
                                        height: 75,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  notify[index].imageUrl),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 85, left: 30),
                                      child: Text(
                                        notify[index].data,
                                        style: TextStyle(
                                            fontSize: 10,
                                            color:
                                                Colors.black.withOpacity(0.6)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: FadeInUp(
                  delay: Duration(milliseconds: 150),
                  child: Text(
                    'Yesterday',
                    style: headingText.copyWith(
                        color: black,
                        fontSize: 33,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: yesterday.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FadeInUp(
                        delay: Duration(milliseconds: 300),
                        child: Container(
                          height: 120,
                          width: double.infinity,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      child: ImageIcon(
                                        AssetImage('assets/images/dot.png'),
                                        size: 65,
                                        color: Color(0xFF1109fd),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25, left: 45),
                                        child: RichText(
                                            text: TextSpan(
                                                text: yesterday[index].title,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.black),
                                                children: [
                                              TextSpan(
                                                  text: '!!',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: Colors.red))
                                            ]))),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 45, left: 30),
                                      child: Text(
                                        yesterday[index].subtitle,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 58, left: 30),
                                      child: Text(
                                        yesterday[index].description,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 275),
                                      child: Container(
                                        height: 75,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  yesterday[index].imageUrl),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 85, left: 30),
                                      child: Text(
                                        yesterday[index].data,
                                        style: TextStyle(
                                            fontSize: 10,
                                            color:
                                                Colors.black.withOpacity(0.6)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 90,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
