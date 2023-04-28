import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';
//import 'package:kws/colors/color_fonts.dart';

class WinContainer extends StatelessWidget {
  const WinContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.38,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello'),
              Text('Hello'),
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Image.asset(
                    'assets/images/watch_images1.png',
                    height: 100,
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.03,
                  width: size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: red.withOpacity(0.7),
                  ),
                  child: Text(
                    'Just Launched!'.toUpperCase(),
                    style: textFont.copyWith(
                        fontSize: 12,
                        color: white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Text(
                'Win',
                style: headingText.copyWith(
                    color: red, fontSize: 22, fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
      ),
    );
  }
}
