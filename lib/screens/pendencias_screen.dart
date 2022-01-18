import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class PendenciaScreen extends StatefulWidget {
  @override
  _PendenciaScreenState createState() => _PendenciaScreenState();
}

class _PendenciaScreenState extends State<PendenciaScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Pendências",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
