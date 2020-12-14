import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class EventosReunioesScreen extends StatefulWidget {
  @override
  _EventosReunioesScreenState createState() => _EventosReunioesScreenState();
}

class _EventosReunioesScreenState extends State<EventosReunioesScreen> {
  final styles = Styles();

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
