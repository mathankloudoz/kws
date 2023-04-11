import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';
import 'package:kws/views/widgets/home/win_container.dart';
import 'package:kws/views/screens/auth/profile.dart';

import '../widgets/home/home_screen_images.dart';
import '../widgets/home/home_screen_selling_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            Image.asset(
              'assets/images/kws_logo.png',
              height: 70,
              width: 95,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(shape: BoxShape.circle, color: white),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ));
                  },
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 25,
                    color: black,
                  ),
                )),
          )
        ],
      ),
      backgroundColor: liteWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeScreenImages(size: size),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Selling Fast',
                      style: headingText.copyWith(
                          color: black,
                          fontSize: 22,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10,
                  ),
                  HomeScreenCardSelling(),
                  SizedBox(
                    height: 10,
                  ),
                  WinContainer(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
