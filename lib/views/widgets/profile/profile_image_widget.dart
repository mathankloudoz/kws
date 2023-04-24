import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../colors/color_fonts.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(seconds: 1),
      child: Container(
        height: 150,
        color: liteWhite,
        width: double.infinity,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(75.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' Mathan T',
              style: headingText.copyWith(
                  color: black,
                  fontSize: 22,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Using email Mathan.thiruvenkadam@kloudoz.com',
              style: textFont.copyWith(
                  color: black, fontSize: 14, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
