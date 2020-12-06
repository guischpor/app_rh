import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function onTap;

  MenuItem({this.title, this.icon, this.iconColor, this.onTap});

  final styles = Styles();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: styles.textColorBlue,
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: iconColor,
                size: 55,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
