import 'package:flutter/cupertino.dart';

class ContatoModel {
  int id;
  IconData icon;
  String gerente;
  String setor;
  String email;
  String telefone;

  ContatoModel(
      {this.id,
      this.icon,
      this.gerente,
      this.setor,
      this.email,
      this.telefone});

  ContatoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
    gerente = json['gerente'];
    setor = json['setor'];
    email = json['email'];
    telefone = json['telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon'] = this.icon;
    data['gerente'] = this.gerente;
    data['setor'] = this.setor;
    data['email'] = this.email;
    data['telefone'] = this.telefone;
    return data;
  }
}
