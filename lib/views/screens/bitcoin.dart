import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../colors/color_fonts.dart';

class BitCoin extends StatelessWidget {
  const BitCoin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            )),
        elevation: 0,
        iconTheme: IconThemeData(
          color: black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInDown(
              duration: Duration(seconds: 2),
              child: Container(
                height: size.height * 0.11,
                width: size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/wallet/bitcoin.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Using Crypto',
                          style: textFont.copyWith(
                            fontSize: 16,
                            color: black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Change',
                              style: textFont.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2,
                                  color: blue),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Select An Amount To Fund',
              style: headingText.copyWith(
                  fontSize: 16,
                  color: black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
            SizedBox(height: 15),
            Container(
              height: size.height * 0.09,
              width: double.infinity,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  width: 3,
                ),
                itemCount: amountValue.length,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FadeInRight(
                    duration: Duration(seconds: 2),
                    child: Container(
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              amountValue[index],
                              style: textFont.copyWith(
                                  color: black,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 2,
                                  fontSize: 18),
                            ),
                          )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Or Enter an amount(min aed50.00)',
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
  }
}

List<String> amountValue = [
  'AED 5',
  'AED 10',
  'AED 20',
  'AED 50',
  'AED 100',
  'AED 500',
  'AED 1000',
];
