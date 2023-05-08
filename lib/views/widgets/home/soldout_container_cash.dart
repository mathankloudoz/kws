// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kws/model/home_card.dart';

import '../../../colors/color_fonts.dart';

class SoldoutContainerCash extends StatelessWidget {
  SoldoutContainerCash({super.key});

  @override
  Widget build(BuildContext context) {
    List<SoldOutCash> _soldOutCash = [
      SoldOutCash(
          id: '1', image: 'assets/images/cashprice.png', name: 'Apr-25-2023'),
      SoldOutCash(
          id: '2', image: 'assets/images/cashprice1.png', name: 'Apr-26-2023'),
      SoldOutCash(
          id: '3', image: 'assets/images/cashprice2.png', name: 'Apr-27-2023'),
    ];
    return Column(
      children: [
        MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 15,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _soldOutCash.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(0.5),
                          blurRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: white),
                  height: 265,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              _soldOutCash[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Campaign: AED150,000 Cash',
                          style: headingText.copyWith(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'CG - 01826',
                          style: headingText.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Draw Date ${_soldOutCash[index].name}',
                          style: headingText.copyWith(
                            color: red,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
