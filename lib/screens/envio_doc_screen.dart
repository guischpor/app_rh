import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
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
      appBar: appBar(titleBar: 'Envio de Documentos'),
    );
  }
}
