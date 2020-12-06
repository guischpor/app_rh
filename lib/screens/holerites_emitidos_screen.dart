import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class HeleritesEmitidosScreen extends StatefulWidget {
  @override
  _HeleritesEmitidosScreenState createState() =>
      _HeleritesEmitidosScreenState();
}

class _HeleritesEmitidosScreenState extends State<HeleritesEmitidosScreen> {
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
