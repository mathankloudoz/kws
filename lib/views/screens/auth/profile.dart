import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:kws/colors/color_fonts.dart';
import 'package:kws/views/widgets/profile/footer_screen.dart';
import 'package:kws/views/widgets/profile/general_widget.dart';
import 'package:kws/views/widgets/profile/personal_detail_widget.dart';
import 'package:kws/views/widgets/profile/profile_image_widget.dart';
import 'package:kws/views/widgets/profile/setting_widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: liteWhite,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                ProfileImageWidget(),
                SizedBox(
                  height: 20,
                ),
                PersonalDetailWidget(),
                SizedBox(
                  height: 5,
                ),
                FadeInUp(
                  duration: Duration(seconds: 1),
                  child: Text(
                    'Setting',
                    style: headingText.copyWith(
                        color: black,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SettingWidget(),
                SizedBox(height: 10),
                FadeInUp(
                  duration: Duration(seconds: 1),
                  child: Text(
                    'General',
                    style: headingText.copyWith(
                        color: black,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GeneralWidget(),
                SizedBox(
                  height: 40,
                ),
                FootScreen(),
              ],
            ),
          ),
        ));
  }
}
