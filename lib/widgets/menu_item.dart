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
      child: Container(
        padding: EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                //offset: Offset(1.0, 1.0),
                blurRadius: 1,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: iconColor,
              size: 60,
            ),
            Text(
              title,
              style: TextStyle(
                  color: styles.textColorGrey, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            // Container(
            //   //color: styles.textColorBlue,
            //   //height: 5,
            //   decoration: BoxDecoration(
            //     border: Border(
            //       bottom: BorderSide(
            //         width: 1.0,
            //         color: Colors.red,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
