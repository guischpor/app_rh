import 'package:flutter/material.dart';

class Styles {
  Gradient backgroundGradientScreen = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.center,
      colors: [
        Color.fromRGBO(12, 131, 190, 1.0),
        Color.fromRGBO(12, 181, 190, 1.0)
      ]);

  //colors Buttons
  Color buttonBlue = Color.fromRGBO(12, 181, 190, 1.0);
  Color colorButtons = Color.fromRGBO(12, 160, 190, 1.0);

  //Colors Others Screens
  Color backgroundScreens = Color.fromRGBO(223, 248, 254, 1.0);
  Color textColorGrey = Color.fromRGBO(108, 113, 119, 1.0);
  Color iconColorGrey = Color.fromRGBO(108, 113, 119, 1.0);
}
