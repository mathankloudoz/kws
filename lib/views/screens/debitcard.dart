import 'package:flutter/material.dart';
import 'package:kws/colors/color_fonts.dart';

class DebitCardScreen extends StatelessWidget {
  const DebitCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: black),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children: [
            Text(
              'Top-Up',
              style: headingText.copyWith(
                  fontSize: 26, fontWeight: FontWeight.w700),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: white,
                  child: new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Enter Card Details',
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                    'assets/wallet/credit-card.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: white,
                      child: new Container(
                        height: 80,
                        width: 165,
                        padding: EdgeInsets.all(10.0),
                        child: new Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Expiry Date',
                                  labelStyle: TextStyle(color: black)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: white,
                      child: new Container(
                        height: 80,
                        width: 165,
                        padding: EdgeInsets.all(10.0),
                        child: new Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Enter CVV',
                                  labelStyle: TextStyle(color: black)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              colors: [
                                lightBlue,
                                blue,
                              ])),
                      child: Center(
                          child: Text(
                        'Proceed',
                        style: textFont.copyWith(fontSize: 16, color: white),
                      )),
                    ),
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
