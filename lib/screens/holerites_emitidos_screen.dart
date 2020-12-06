import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class HoleritesEmitidosScreen extends StatefulWidget {
  @override
  _HoleritesEmitidosScreenState createState() =>
      _HoleritesEmitidosScreenState();
}

class _HoleritesEmitidosScreenState extends State<HoleritesEmitidosScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Holerites Emitidos",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
