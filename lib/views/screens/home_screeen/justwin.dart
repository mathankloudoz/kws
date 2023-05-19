import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';
import 'package:kws/model/home_card.dart';

class justWin extends StatelessWidget {
  const justWin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Justwin> justWin = [
      Justwin(id: '1', image: 'assets/images/money.png'),
      Justwin(id: '2', image: 'assets/images/price.jpg'),
      Justwin(id: '3', image: 'assets/images/price1.jpg'),
      Justwin(id: '3', image: 'assets/images/price2.jpg'),
    ];
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: justWin.length,
              itemBuilder: (context, index) {
                return JustWinCardWidget(justWin: justWin[index].image);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class JustWinCardWidget extends StatelessWidget {
  const JustWinCardWidget({
    super.key,
    required this.justWin,
  });

  final String justWin;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      elevation: 0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 55.0,
              height: 18.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage('assets/images/sold.JPG'),
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: white,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: 240.0,
              height: 115.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      spreadRadius: 3,
                      color: black.withOpacity(0.3))
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage(justWin),
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: white,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 13,
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Just Launched!'.toUpperCase(),
                  style: TextStyle(fontSize: 8),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffe86147),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    'Win',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    'AED25,000 Cash',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'Buy RNB Set ',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 35,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add to Cart!'.toUpperCase(),
                        style: TextStyle(fontSize: 12),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff181ef9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: Size(280, 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Image.asset(
                  'assets/images/calender.png',
                  scale: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Max draw date 24 Apr 2023',
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'or when the campaign is sold out, whicheveris earlier',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
