import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';

class WishListCardDetails extends StatelessWidget {
  const WishListCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Idealz Wallet',
              style: headingText.copyWith(
                  color: black,
                  fontSize: 23,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: size.height * 0.20,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Available Balance in Idealz Wallet',
                      style: headingText.copyWith(
                        fontSize: 16,
                        color: black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      'AED 5.00',
                      style: headingText.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Select Top-up Method',
              style: headingText.copyWith(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  letterSpacing: 1),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 175,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Image.asset(
                              'assets/wallet/apple-pay.png',
                            ),
                          )),
                    ),
                    Container(
                      height: 80,
                      width: 175,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            child: Image.asset(
                              'assets/wallet/visa.png',
                            ),
                          )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
