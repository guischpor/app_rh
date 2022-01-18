import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
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
      appBar: appBar(titleBar: 'Pendências'),
    );
  }
}
