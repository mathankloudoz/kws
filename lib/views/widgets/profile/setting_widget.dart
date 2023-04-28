import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../colors/color_fonts.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key});

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
                ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(
                    Icons.language,
                    color: black,
                  ),
                  title: Text(
                    'Language',
                    style: textFont.copyWith(
                        color: black.withOpacity(0.7),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(
                    Icons.currency_exchange,
                    color: black,
                  ),
                  title: Text(
                    'Currency',
                    style: textFont.copyWith(
                        color: black.withOpacity(0.7),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(
                    Icons.add_card,
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
                ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  leading: Icon(
                    Icons.lock,
                    color: black,
                  ),
                  title: Text(
                    'Change Password',
                    style: textFont.copyWith(
                        color: black.withOpacity(0.7),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ]).toList(),
            ),
          ))),
    );
  }
}
