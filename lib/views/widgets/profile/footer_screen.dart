import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../colors/color_fonts.dart';

class FootScreen extends StatelessWidget {
  const FootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInUp(
          duration: Duration(seconds: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(234, 234, 234, 1),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3, 3),
                          color: black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 0)
                    ]),
                child: Text(
                  'Call Us',
                  style: textFont.copyWith(
                      color: black.withOpacity(0.7),
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(234, 234, 234, 1),
                    boxShadow: [
                      BoxShadow(
                          color: black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 0)
                    ]),
                child: Text(
                  'Email',
                  style: textFont.copyWith(
                      fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: FadeInRight(
            duration: Duration(seconds: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(234, 234, 234, 1),
                      boxShadow: [BoxShadow(blurRadius: 10, color: white)]),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/facebook.png')),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(234, 234, 234, 1),
                      boxShadow: [BoxShadow(blurRadius: 1, color: white)]),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/twitter.png',
                        color: black,
                      )),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(234, 234, 234, 1),
                      boxShadow: [BoxShadow(blurRadius: 1, color: white)]),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/linkedin.png',
                        color: black,
                      )),
                ),
                Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(234, 234, 234, 1),
                        boxShadow: [BoxShadow(blurRadius: 10, color: white)]),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/instagram.png'))),
                Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(234, 234, 234, 1),
                        boxShadow: [BoxShadow(blurRadius: 10, color: white)]),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/whatsapp.png'))),
                Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(234, 234, 234, 1),
                        boxShadow: [BoxShadow(blurRadius: 10, color: white)]),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/tik-tok.png'))),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Agreement',
                style: textFont.copyWith(
                    color: black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Privacy Policy',
                style: textFont.copyWith(
                    color: black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Frequently Asked Questions',
                style: textFont.copyWith(
                    color: black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Delete My Account',
                style: textFont.copyWith(
                    color: black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
