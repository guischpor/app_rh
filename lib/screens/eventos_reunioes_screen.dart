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
        child: Center(
          child: Text("Ola"),
        ),
      ),
    );
  }
}
