import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double radius;
  final IconData iconData;
  final void Function()? onTap;

  CustomIconButton({
    required this.iconData,
    required this.onTap,
    required this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Icon(iconData),
          onTap: onTap,
        ),
      ),
    );
  }
}
