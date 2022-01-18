import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class DemoPagamentoScreen extends StatefulWidget {
  @override
  _DemoPagamentoScreenState createState() => _DemoPagamentoScreenState();
}

class _DemoPagamentoScreenState extends State<DemoPagamentoScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: appBar(titleBar: 'Demo de pagamentos'),
    );
  }
}
