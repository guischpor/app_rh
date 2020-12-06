import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class EventosFeriasScreen extends StatefulWidget {
  @override
  _EventosFeriasScreenState createState() => _EventosFeriasScreenState();
}

class _EventosFeriasScreenState extends State<EventosFeriasScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Eventos e Reuniões",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
    );
  }
}
