import 'package:app_rh/styles/styles.dart';
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
      appBar: AppBar(
        title: Text(
          "Demonstrativo de Pagamento",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
