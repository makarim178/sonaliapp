import 'package:flutter/material.dart';

Color kFlatGold = Color(0xFFd0a93f);
Color kFlatGreen = Color(0xFF8CC540);
Color kFlatGrey = Color(0xFFF1F1F1);

const kTextFieldDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0X158CC63E),
    hintText: 'Enter a value',
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    labelText: 'Enter a value',
    labelStyle: TextStyle(
        color: Colors.orangeAccent
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.orangeAccent, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.orangeAccent, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),

  );

TextStyle kAppBarTitlte =  TextStyle(
  fontSize: 20.0,
);
