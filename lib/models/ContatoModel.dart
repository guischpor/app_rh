import 'package:flutter/cupertino.dart';

class ContatoModel {
  int id;
  IconData icon;
  String gerente;
  String setor;
  String email;
  String telefone;

  ContatoModel(
      {required this.id,
      required this.icon,
      required this.gerente,
      required this.setor,
      required this.email,
      required this.telefone});
}
