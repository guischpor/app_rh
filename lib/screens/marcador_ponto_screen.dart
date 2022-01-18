import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class MarcadorPontoScreen extends StatefulWidget {
  @override
  _MarcadorPontoScreenState createState() => _MarcadorPontoScreenState();
}

class _MarcadorPontoScreenState extends State<MarcadorPontoScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Marcador de Ponto",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
