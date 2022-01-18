import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final IconData? icon;
  final Widget? preffix;
  final Widget? suffix;
  final Color? iconColor;
  final bool obscureText;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final bool? enable;

  InputField({
    this.controller,
    required this.hint,
    this.icon,
    this.preffix,
    this.suffix,
    this.iconColor,
    this.obscureText = false,
    required this.textInputType,
    this.onChanged,
    this.enable,
  });

  final styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        keyboardType: textInputType,
        onChanged: onChanged,
        enabled: enable,
        style: TextStyle(
          color: styles.textColorGrey,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(17),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: iconColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: preffix,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
