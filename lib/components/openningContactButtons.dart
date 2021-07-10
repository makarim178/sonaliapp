import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sonali_app/screens/customer_care_screen.dart';
import 'package:sonali_app/utilities/styleConstants.dart';


Row OpenningContactButtons (BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.filter_frames,
            color: kFlatGreen,
            size: 45.0,

          ),
        ),
      ), // ICON - PRODUCTS

      Padding(
        padding: const EdgeInsets.all(15.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.contact_support,
            color: kFlatGold,
            size: 45.0,
          ),
        ),
      ), // ICON HELP
      Padding(
        padding: const EdgeInsets.only(right: 40.0, left: 15.0),
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, CustomerCareScreen.id);
          },
          icon: Icon(
            Icons.person_pin,
            color: kFlatGreen,
            size: 45.0,
          ),
        ), // ICON - CONTACT US
      ),
    ],
  );
}