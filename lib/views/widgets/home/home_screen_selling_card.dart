import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kws/model/home_card.dart';

import '../../../colors/color_fonts.dart';

class HomeScreenCardSelling extends StatefulWidget {
  @override
  State<HomeScreenCardSelling> createState() => _HomeScreenCardSellingState();
}

class _HomeScreenCardSellingState extends State<HomeScreenCardSelling> {
  List<HomeCard> cardItem = [
    HomeCard(
      id: '101',
      imageUrl: 'assets/images/watch_images.png',
      title: 'Get a Chance to Win',
      subTitle: 'IWC Pilot - Top Gun',
      stock: '558 Sold out of 750',
      value: 0.68,
    ),
    HomeCard(
      id: '102',
      imageUrl: 'assets/images/watch_images1.png',
      title: 'Get a Chance to Win',
      subTitle: 'IWC Pilot - Top Gun',
      stock: '748 Sold out of 750',
      value: 0.9,
    ),
    HomeCard(
      id: '103',
      imageUrl: 'assets/images/watch_images2.png',
      title: 'Get a Chance to Win',
      subTitle: 'IWC Pilot - Top Gun',
      stock: '320 Sold out of 750',
      value: 0.3,
    ),
    HomeCard(
      id: '104',
      imageUrl: 'assets/images/watch_images3.png',
      title: 'Get a Chance to Win',
      subTitle: 'IWC Pilot - Top Gun',
      stock: '625 Sold out of 750',
      value: 0.75,
    ),
  ];

  final String bannerImage = 'assets/banner/post_images.jpg';

  //Linear Color values
  Color calculateBackgroundColor({required double value}) {
    if (value <= 0.7) {
      return Colors.green;
    }
    // else if (value <= 0.30) {
    //   return Colors.orange;
    // }
    else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.19,
          width: double.infinity,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 3,
            ),
            itemCount: cardItem.length,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            cardItem[index].imageUrl,
                            height: 60,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          cardItem[index].title,
                          style: textFont.copyWith(
                              color: black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          cardItem[index].subTitle,
                          style: textFont.copyWith(
                              color: black,
                              fontWeight: FontWeight.w800,
                              fontSize: 12),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          cardItem[index].stock,
                          style: textFont.copyWith(
                              color: black,
                              fontWeight: FontWeight.w800,
                              fontSize: 10),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: LinearProgressIndicator(
                            value: cardItem[index].value,
                            color: calculateBackgroundColor(
                                value: cardItem[index].value),
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        FadeInUp(
          duration: Duration(seconds: 2),
          child: Container(
            height: size.height * 0.16,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    bannerImage,
                    height: size.height * 0.15,
                    width: double.infinity,
                    scale: 1.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
