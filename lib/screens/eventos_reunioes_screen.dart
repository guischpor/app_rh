import 'package:app_rh/widgets/app_bar.dart';
import 'package:app_rh/widgets/card_event_reuniao.dart';
import 'package:flutter/material.dart';

//Widgets
import 'package:app_rh/styles/styles.dart';
//import 'package:intl/intl.dart';

//Pages

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
      appBar: appBar(
        titleBar: 'Eventos e Reuniões',
        actions: [
          IconButton(
            icon: Icon(
              Icons.date_range,
            ),
            onPressed: () async {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            CardEventoReuniao(
              diaSemana: 'dom',
              dia: '13',
              initialHour: '10:00 am',
              lastHour: '11:30 am',
              nameEvent: 'Aplicação de nova tecnologia.',
              description: 'Domingo, 13 de dezembro 10h às 11:30h ',
              onTap: _routeInfoEventoReuniaoScreen,
            ),
            CardEventoReuniao(
              diaSemana: 'sexta',
              dia: '18',
              initialHour: '14:00 pm',
              lastHour: '15:00 pm',
              nameEvent: 'Reajuste de projeto.',
              description: 'Sexta, 18 de dezembro 14h às 15:00h ',
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }

  void _routeInfoEventoReuniaoScreen() async {
    Navigator.pushNamed(context, 'info_evento_reuniao');
  }
}
