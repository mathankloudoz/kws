import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Active Ticket',
                    style: headingText.copyWith(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25),
                    child: Container(
                      height: 45,
                      child: Card(
                        elevation: 3,
                        color: Color.fromARGB(255, 198, 191, 191),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: TabBar(
                          indicator: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(20)),
                          labelColor: Color.fromARGB(255, 19, 19, 193),
                          labelStyle: headingText.copyWith(
                              color: Color.fromARGB(255, 19, 19, 193),
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                          tabs: [
                            Tab(
                              text: 'Idealz',
                            ),
                            Tab(text: 'Idealz One'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 350,
                        child: Image.network(
                          'https://cdn.icon-icons.com/icons2/1577/PNG/512/3615756-card-coupon-discount-gift-label-offer-voucher_107904.png',
                          height: 80,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Text(
                          'you can see your active tickets here after you have made a purchase',
                          style: textFont.copyWith(
                              color: black,
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              height: 1.5),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
