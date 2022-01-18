import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class EnvioDocScreen extends StatefulWidget {
  @override
  _EnvioDocScreenState createState() => _EnvioDocScreenState();
}

class _EnvioDocScreenState extends State<EnvioDocScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Envio de Documentos",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
