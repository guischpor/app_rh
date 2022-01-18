import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

Styles styles = Styles();

AppBar appBar({
  required String titleBar,
  List<Widget>? actions,
}) {
  return AppBar(
    title: Text(
      titleBar,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: styles.backgroundDrawerInfo,
    actions: actions,
  );
}
