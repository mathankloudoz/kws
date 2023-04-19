import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:kws/colors/color_fonts.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: black,
        ),
        leading: CupertinoButton(
            child: Icon(
              Icons.keyboard_arrow_left,
              color: black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Details',
                    style: headingText.copyWith(
                        color: black,
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        letterSpacing: 2),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(75.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      labelText: 'First Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      labelText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(height: 10),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
