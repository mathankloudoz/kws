import 'package:flutter/material.dart';

import '../../../colors/color_fonts.dart';

class HomeScreenImages extends StatelessWidget {
  const HomeScreenImages({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.45,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            child: Image.asset(
              'assets/images/kws1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: size.height * 0.16,
            left: size.width * 0.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Win',
                  style: headingText.copyWith(
                      color: red, fontSize: 72, letterSpacing: 4),
                ),
                Text(
                  '1000,000',
                  style: textFont.copyWith(
                      color: white,
                      fontSize: 60,
                      letterSpacing: 2,
                      height: 0.7),
                ),
                Text(
                  'Spend AED825 And Make It Yours!',
                  style: textFont.copyWith(
                      color: white, fontSize: 16, height: 1.3),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  height: size.height * 0.045,
                  width: size.width / 2.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            lightBlue,
                            blue,
                          ])),
                  child: Text(
                    'Start Shopping',
                    style: textFont.copyWith(color: white, fontSize: 20),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
