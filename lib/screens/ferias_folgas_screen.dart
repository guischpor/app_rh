import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class FeriasFolgasScreen extends StatefulWidget {
  @override
  _FeriasFolgasScreenState createState() => _FeriasFolgasScreenState();
}

class _FeriasFolgasScreenState extends State<FeriasFolgasScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Férias e Folgas",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
