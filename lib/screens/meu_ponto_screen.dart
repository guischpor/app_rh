import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class MeuPontoScreen extends StatefulWidget {
  @override
  _MeuPontoScreenState createState() => _MeuPontoScreenState();
}

class _MeuPontoScreenState extends State<MeuPontoScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Meu Ponto",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
