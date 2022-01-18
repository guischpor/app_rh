import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
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
      appBar: appBar(titleBar: 'Holetires Emitidos'),
    );
  }
}
