import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
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
      appBar: appBar(titleBar: "Férias e Folgas"),
    );
  }
}
