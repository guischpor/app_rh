import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
import 'package:app_rh/widgets/card_info_evento.dart';
import 'package:flutter/material.dart';

class InfoEventoReuniaoScreen extends StatefulWidget {
  @override
  _InfoEventoReuniaoScreenState createState() =>
      _InfoEventoReuniaoScreenState();
}

class _InfoEventoReuniaoScreenState extends State<InfoEventoReuniaoScreen> {
  final styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: appBar(titleBar: 'Eventos e Reuniões'),
      body: Container(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: <Widget>[
              CardInfoEventoReuniao(
                titleEvent: "Aplicação de nova tecnologia",
                hour: 'Domingo, 13 de dezembro - 10h às 11:30h',
                empresa: 'Empresa A&B Tecnologia',
                time: '5 minutos antes',
                participante: '20',
              ),
            ],
          )),
    );
  }
}
