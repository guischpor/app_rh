import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
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
      appBar: appBar(titleBar: 'Marcador de Ponto'),
    );
  }
}
