import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kws/views/widgets/live_screen/live_screen_tab_bar.dart';

import '../../../colors/color_fonts.dart';
import '../../../model/live_screen_model.dart';

class LiveScreen extends StatelessWidget {
  LiveScreen({super.key});

  List<LiveScreenModel> liveScreenModel = [
    LiveScreenModel(
        id: '1',
        date: DateTime.now(),
        image:
            'https://www.skillsartcars.com/hosted/images/8b/fc7bcfada14c838d03c1c6c3a8728d/Audi-A6.png'),
    LiveScreenModel(
        id: '2',
        date: DateTime.now(),
        image:
            'https://purepng.com/public/uploads/large/purepng.com-apple-iphone-xappleapple-iphonephonesmartphonemobile-devicetouch-screeniphone-xiphone-10electronicsobjects-251530689700piyl0.png'),
    LiveScreenModel(
        id: '3',
        date: DateTime.now(),
        image:
            'https://www.dubaidutyfree.com/ccstore/v1/images/?source=/file/v7587801884318661039/general/Car1839-1.png&height=475&width=475'),
    LiveScreenModel(
        id: '4',
        date: DateTime.now(),
        image:
            'https://www.freepnglogos.com/uploads/laptop-png/laptop-transparent-png-pictures-icons-and-png-40.png'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Live Drawn',
                style: headingText.copyWith(
                    color: black, fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            Column(
              children: [
                Container(
                  height: size.height * 0.20,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: liveScreenModel.length,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FadeInRight(
                          duration: Duration(seconds: 2),
                          child: Container(
                              height: 150,
                              width: 125,
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(blurRadius: 2)],
                                borderRadius: BorderRadius.circular(15),
                                color: white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        liveScreenModel[index].image),
                                    fit: BoxFit.cover),
                              ),
                              child: Card(
                                elevation: 1,
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                    child: Text(
                                  liveScreenModel[index].date.toString(),
                                  style: textFont.copyWith(
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                )),
                              )));
                    },
                  ),
                ),
                SizedBox(
                    height: size.height,
                    child: LiveScreenTabBar(title: 'Hello'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
