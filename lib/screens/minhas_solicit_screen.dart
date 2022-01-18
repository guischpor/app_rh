import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
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
      appBar: appBar(titleBar: 'Minhas Solicitações'),
    );
  }
}
