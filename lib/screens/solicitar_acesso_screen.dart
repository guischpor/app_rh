import 'package:flutter/material.dart';

class SolicitarAcessoScreen extends StatefulWidget {
  @override
  _SolicitarAcessoScreenState createState() => _SolicitarAcessoScreenState();
}

class _SolicitarAcessoScreenState extends State<SolicitarAcessoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solicitar Acesso"),
      ),
    );
  }
}
