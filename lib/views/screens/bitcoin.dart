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
          children: [
            Container(
              height: size.height * 0.08,
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
          ],
        ),
      ),
    );
  }
}
