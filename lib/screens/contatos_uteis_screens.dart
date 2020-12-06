import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class ContatosUteisScreen extends StatefulWidget {
  @override
  _ContatosUteisScreenState createState() => _ContatosUteisScreenState();
}

class _ContatosUteisScreenState extends State<ContatosUteisScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Contatos Úteis",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
