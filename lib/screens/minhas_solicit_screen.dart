import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class MinhasSolicitScreen extends StatefulWidget {
  @override
  _MinhasSolicitScreenState createState() => _MinhasSolicitScreenState();
}

class _MinhasSolicitScreenState extends State<MinhasSolicitScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Minhas Solicitações",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
