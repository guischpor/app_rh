import 'package:flutter/material.dart';

class BuildFlatButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final Color textColor;

  BuildFlatButton({
    required this.title,
    this.onPressed,
    required this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      textColor: textColor,
      child: Text(title, style: TextStyle(letterSpacing: 0.2, fontSize: 11)),
    );
  }
}
