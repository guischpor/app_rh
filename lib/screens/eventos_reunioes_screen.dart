import 'package:app_rh/widgets/card_event_reuniao.dart';
import 'package:flutter/material.dart';

//Widgets
import 'package:app_rh/styles/styles.dart';
import 'package:intl/intl.dart';

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
      appBar: AppBar(
        title: Text(
          "Eventos e Reuniões",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
        actions: [
          IconButton(
            icon: Icon(
              Icons.date_range,
            ),
            onPressed: () async {
              final data = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2050),
                locale: Locale("pt", "BR"),
              );

              if (data != null) {
                final datapt =
                    DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_Br').format(data);
                print(datapt);
              }
            },
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
