import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class BuildCardContatos extends StatelessWidget {
  final IconData iconData;
  final int? index;
  final dynamic data;
  final Color iconColor;
  final double iconSize;
  final double textSize;
  final String? gerente;
  final String? setor;
  final String? email;
  final String? phone;

  BuildCardContatos({
    required this.iconData,
    required this.iconColor,
    required this.iconSize,
    required this.textSize,
    required this.gerente,
    required this.setor,
    required this.email,
    required this.phone,
    required this.index,
    required this.data,
  });

  final styles = Styles();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 200,
      child: Card(
        elevation: 2.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              iconData,
              size: iconSize,
              color: iconColor,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 80,
              width: 0.7,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Gerente: $gerente",
                  style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                      color: styles.textColorGrey),
                ),
                Text(
                  "Setor: $setor",
                  style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                      color: styles.textColorGrey),
                ),
                Text(
                  "Email: $email",
                  style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                      color: styles.textColorGrey),
                ),
                Text(
                  "Telefone: $phone",
                  style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.w500,
                      color: styles.textColorGrey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
