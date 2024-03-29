import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final Color colorButton;
  final String? title;
  final void Function()? onPressed;

  BuildButton({
    required this.colorButton,
    this.onPressed,
    this.title,
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
      child: Text(
        title!,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
