import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String? title;
  final double? sizeTitle;
  final Color colorTitle;
  final IconData icon;
  final Color iconColor;
  final void Function()? onTap;

  MenuItem({
    required this.title,
    this.sizeTitle,
    required this.colorTitle,
    required this.icon,
    required this.iconColor,
    this.onTap,
  });

  final styles = Styles();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: SizedBox(
        width: 90,
        height: 90,
        child: Card(
          color: styles.iconColorBlue,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icon,
                    color: iconColor,
                    size: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    title!,
                    style: TextStyle(
                        color: colorTitle,
                        fontWeight: FontWeight.bold,
                        //fontSize: sizeTitle,
                        fontSize: 13),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
