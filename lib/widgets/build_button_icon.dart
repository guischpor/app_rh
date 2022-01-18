import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class BuildButtonIcon extends StatelessWidget {
  final double iconSize;
  final IconData iconRight;
  final Color iconColor;
  final Color? colorButton;
  final String title;
  final void Function()? onPressed;

  BuildButtonIcon({
    required this.colorButton,
    required this.iconSize,
    required this.iconRight,
    required this.iconColor,
    required this.onPressed,
    required this.title,
  });

  final styles = Styles();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
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
    );
  }
}
