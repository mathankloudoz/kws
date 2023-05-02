import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../colors/color_fonts.dart';

class SoldOut extends StatelessWidget {
  const SoldOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0.5,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sold Out'.toUpperCase(),
                        style: headingText.copyWith(
                            color: black,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2,
                            fontSize: 22),
                      ),
                      Text(
                        'sold out campaign along with their corresponding draw are listed here.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: headingText.copyWith(color: black, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                //color: Colors.white,

                width: 400.0,
                padding: EdgeInsets.only(top: 105, left: 30, right: 30),
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
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage('assets/images/price.jpg'),
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
                          'Draw Date : Apr-27-2023',
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
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
