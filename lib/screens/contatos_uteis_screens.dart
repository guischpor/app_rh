import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_card.contatos.dart';
import 'package:flutter/material.dart';

class ContatosUteisScreen extends StatefulWidget {
  @override
  _ContatosUteisScreenState createState() => _ContatosUteisScreenState();
}

class _ContatosUteisScreenState extends State<ContatosUteisScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Contatos Úteis",
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.iconColorBlue),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            BuildCardContatos(
              iconData: Icons.code,
              iconColor: styles.iconColorBlue,
              iconSize: 70,
              textSize: 15,
              gerente: "Aldair Santos",
              setor: "Fábrica de Software",
              email: "fabsoft@email.com",
              phone: "(41) 3333-2222",
            ),
            BuildCardContatos(
              iconData: Icons.person,
              iconColor: styles.iconColorBlue,
              iconSize: 70,
              textSize: 15,
              gerente: "Fabiola Padilha",
              setor: "Recursos Humanos",
              email: "rht@email.com",
              phone: "(41) 3333-2233",
            ),
            BuildCardContatos(
              iconData: Icons.insert_drive_file,
              iconColor: styles.iconColorBlue,
              iconSize: 70,
              textSize: 15,
              gerente: "Simone Dantas",
              setor: "Administração",
              email: "adm@email.com",
              phone: "(41) 3333-2244",
            ),
            BuildCardContatos(
              iconData: Icons.person_outline,
              iconColor: styles.iconColorBlue,
              iconSize: 70,
              textSize: 15,
              gerente: "Miguel Souza",
              setor: "Diretoria",
              email: "diretoria@email.com",
              phone: "(41) 3333-2255",
            ),
            BuildCardContatos(
              iconData: Icons.build,
              iconColor: styles.iconColorBlue,
              iconSize: 70,
              textSize: 15,
              gerente: "Leo Paiva",
              setor: "Manutenção de TI",
              email: "manutti@email.com",
              phone: "(41) 3333-2266",
            ),
          ],
        ),
      ),
    );
  }
}
