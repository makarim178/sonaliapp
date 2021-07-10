import 'package:flutter/material.dart';

showError(BuildContext context, String errorStr) {
  final snackBar = SnackBar(
    backgroundColor: Colors.orange,
    content: Text(
      errorStr,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}