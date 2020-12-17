import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class CardEventoReuniao extends StatelessWidget {
  final String diaSemana;
  final String dia;

  final String initialHour;
  final String lastHour;

  final String nameEvent;
  final String description;

  final Function onTap;

  final styles = Styles();

  CardEventoReuniao({
    this.dia,
    this.initialHour,
    this.lastHour,
    this.nameEvent,
    this.description,
    this.diaSemana,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: SizedBox(
        height: 100,
        width: 300,
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(8),
                      bottomLeft: const Radius.circular(8),
                    ),
                    color: styles.iconColorBlue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      diaSemana.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      dia,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      initialHour,
                      style: TextStyle(
                        color: styles.textColorGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      lastHour,
                      style: TextStyle(
                        color: styles.textColorGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameEvent,
                      style: TextStyle(
                          color: styles.textColorGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: styles.textColorGrey,
                        fontSize: 14,
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
