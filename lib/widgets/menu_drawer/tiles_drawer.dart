import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class TilesDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  TilesDrawer({
    this.icon,
    this.title,
    this.onTap,
  });

  final styles = Styles();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: styles.iconColorBlue,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: styles.textColorGrey,
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }
}
