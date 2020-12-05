import 'package:flutter/material.dart';

class BuildFlatButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color textColor;

  BuildFlatButton({this.title, this.onPressed, this.textColor});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      textColor: textColor,
      child: Text(title, style: TextStyle(letterSpacing: 0.6, fontSize: 11)),
    );
  }
}
