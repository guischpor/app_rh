import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'esqueceu_senha_store.g.dart';

class EsqueceuSenhaStore = _EsqueceuSenhaStore with _$EsqueceuSenhaStore;

abstract class _EsqueceuSenhaStore with Store {
  //constructor
  _EsqueceuSenhaStore() {
    autorun((_) {});
  }

  //campo email
  @observable
  String email = "";

  //setar email
  @action
  void setEmail(String value) => email = value;

  //loanding send email
  @observable
  bool loading = false;

  @observable
  bool sending = false;

  //validação dos campos
  @computed
  bool get isEmailValid => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);

  @computed
  Function get sendPressed => (isEmailValid && !loading) ? send : null;

  //funcao envia senha
  @action
  Future<void> send() async {
    loading = true;

    //processa o envio da senha
    await Future.delayed(Duration(seconds: 3));

    loading = false;

    //quando estiver enviando as senha
    sending = true;

    email = "";
  }
}
