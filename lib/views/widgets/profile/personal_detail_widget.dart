import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kws/views/screens/auth/walletlist.dart';
import 'package:kws/views/widgets/profile/profile_details/profile_details.dart';

import '../../../colors/color_fonts.dart';

class PersonalDetailWidget extends StatelessWidget {
  const PersonalDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInUp(
      duration: Duration(seconds: 1),
      child: Container(
          height: size.height * 0.21,
          width: double.infinity,
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children:
                  ListTile.divideTiles(color: black, context: context, tiles: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileDetails(),
                        ));
                  },
                  child: ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.person_2_outlined,
                      color: black,
                    ),
                    title: Text(
                      'Personal Details',
                      style: textFont.copyWith(
                          color: black.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.favorite_border,
                      color: black,
                    ),
                    title: Text(
                      'Wishlist',
                      style: textFont.copyWith(
                          color: black.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WalletCardDetails(),
                        ));
                  },
                  child: ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.wallet,
                      color: black,
                    ),
                    title: Text(
                      'Wallets',
                      style: textFont.copyWith(
                          color: black.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    leading: Icon(
                      Icons.logout,
                      color: black,
                    ),
                    title: Text(
                      'Logout',
                      style: textFont.copyWith(
                          color: black.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
              ]).toList(),
            ),
          ))),
    );
  }
}
