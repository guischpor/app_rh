import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/title_page.dart';
import 'package:flutter/material.dart';
import 'build_button.dart';

Styles styles = Styles();

Future<void> showAlerta({
  required BuildContext context,
  required IconData icon,
  required String title,
  required String message,
  required String titleButton,
  required void Function()? onPressed,
}) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        content: Container(
          height: 330,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 130,
                color: styles.iconColorBlue,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: TitlePage(
                  title: title,
                  color: styles.textColorAlert,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TitlePage(
                  title:
                      message,
                  color: styles.iconColorGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 200,
                height: 50,
                margin: EdgeInsets.only(top: 15),
                child: BuildButton(
                  colorButton: styles.colorButtons,
                  onPressed: onPressed,
                  title: titleButton,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
