import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class CardInfoEventoReuniao extends StatelessWidget {
  final String titleEvent;
  final String hour;
  final String empresa;
  final String time;
  final String participante;

  CardInfoEventoReuniao({
    this.titleEvent,
    this.hour,
    this.empresa,
    this.time,
    this.participante,
  });

  final styles = Styles();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info,
                        size: 26,
                        color: styles.iconColorBlue,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text(
                          titleEvent,
                          style: TextStyle(
                            color: styles.textColorGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 34),
                    child: Text(
                      hour,
                      style: TextStyle(
                        color: styles.textColorGrey,
                        fontSize: 14,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      size: 26,
                      color: styles.iconColorBlue,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        empresa,
                        style: TextStyle(
                          color: styles.textColorGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 26,
                          color: styles.iconColorBlue,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            'No horário da reunião/evento',
                            style: TextStyle(
                              color: styles.textColorGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 34),
                      child: Text(
                        time,
                        style: TextStyle(
                          color: styles.textColorGrey,
                          fontSize: 14,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.supervisor_account,
                      size: 26,
                      color: styles.iconColorBlue,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        "$participante participantes",
                        style: TextStyle(
                          color: styles.textColorGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
