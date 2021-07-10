import 'package:flutter/material.dart';
class SonaliButton extends StatelessWidget {
  SonaliButton({required this.title, this.colour = Colors.grey, required this.onPressed, required this.txtColor});
  final Color colour;
  final Color txtColor;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 2.0,
        color: colour,
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          minWidth: 200.0,
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              color: txtColor,
            ),
          ),

        ),
      ),
    );
  }
}