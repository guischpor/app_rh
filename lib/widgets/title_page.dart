import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  final String title;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;

  TitlePage({
    required this.title,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
      textAlign: textAlign,
    );
  }
}
