// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';
import 'package:kws/model/winner_container.dart';

class WinnerContainer extends StatelessWidget {
  WinnerContainer({
    super.key,
  });
  List<WinnerContainerModel> _list = [
    WinnerContainerModel(
        id: '01',
        imageUrl: 'assets/images/price.jpg',
        title: 'Congratulations',
        subTitle: 'Sheikha AI Noaimi On Winning',
        subTitle1: 'AED50,000 CASH',
        subtitle2: 'TICKET NO. CG-01827-00122-0'),
    WinnerContainerModel(
        id: '02',
        imageUrl: 'assets/images/price1.jpg',
        title: 'Congratulations',
        subTitle: 'Black Tap On Winning',
        subTitle1: 'AED40,000 CASH',
        subtitle2: 'TICKET NO. CG-01827-00233-0'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 15,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: _list.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 275,
            width: double.infinity,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 135,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          _list[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: black,
                    ),
                    Text(
                      _list[index].title,
                      style: headingText.copyWith(
                        color: red,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      _list[index].subTitle,
                      style: textFont.copyWith(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      _list[index].subTitle1,
                      style: headingText.copyWith(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      _list[index].subtitle2,
                      style: headingText.copyWith(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
