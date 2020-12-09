import 'dart:ffi';

import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class BuildButtonIcon extends StatelessWidget {
  final double iconSize;
  final IconData iconRight;
  final Color iconColor;
  final Color colorButton;
  final String title;
  final Function onPressed;

  BuildButtonIcon({
    this.colorButton,
    this.iconSize,
    this.iconRight,
    this.iconColor,
    this.onPressed,
    this.title,
  });

  final styles = Styles();

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: colorButton,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          Icon(
            iconRight,
            color: iconColor,
            size: iconSize,
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
        10,
      )),
    );
  }
}