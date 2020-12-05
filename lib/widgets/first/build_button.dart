import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final Color colorButton;
  final String title;
  final Function function;

  BuildButton({this.colorButton, this.function, this.title});

  final styles = Styles();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: EdgeInsets.all(8),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: RaisedButton(),
    );
  }
}
