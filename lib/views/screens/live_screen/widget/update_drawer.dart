// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kws/colors/color_fonts.dart';
import 'package:kws/model/winner_container.dart';

class UpdateDrawer extends StatelessWidget {
  UpdateDrawer({
    super.key,
  });

  DateTime now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    List<WinnerContainerModel> _list = [
      WinnerContainerModel(
          id: '01',
          imageUrl: 'assets/images/cashprice.png',
          title: 'Draw Date:  ${DateFormat('yMd').format(now)} ',
          subTitle: 'Campaign: AED150,000 Cash',
          subTitle1: 'CG-01826',
          subtitle2: 'TICKET NO. CG-01827-00122-0'),
      WinnerContainerModel(
          id: '02',
          imageUrl: 'assets/images/cashprice2.png',
          title: 'Draw Date: ${DateTime.now().subtract(Duration(days: 1))} ',
          subTitle: 'Campaign: AED150,000 Cash',
          subTitle1: 'CG-03654',
          subtitle2: 'TICKET NO. CG-01827-00233-0'),
    ];

    return Container(
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 15,
        ),
        itemCount: _list.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 250,
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
                    Text(
                      _list[index].subTitle,
                      style: headingText.copyWith(
                        color: red,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      _list[index].subTitle1,
                      style: textFont.copyWith(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _list[index].title,
                      style: headingText.copyWith(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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
