import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';

class GeneralWidget extends StatelessWidget {
  const GeneralWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInUp(
      duration: Duration(seconds: 1),
      child: Container(
        height: size.height * 0.11,
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
                leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/alert.png')),
                title: Text(
                  'How it Works',
                  style: textFont.copyWith(
                      color: black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/t-shirt.png',
                      color: black,
                    )),
                title: Text(
                  'Our Products',
                  style: textFont.copyWith(
                      color: black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ]).toList(),
          ),
        )),
      ),
    );
  }
}
