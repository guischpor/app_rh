import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button_icon.dart';
import 'package:app_rh/widgets/build_card_profile.dart';
import 'package:flutter/material.dart';

class MeuPerfilScreen extends StatefulWidget {
  @override
  _MeuPerfilScreenState createState() => _MeuPerfilScreenState();
}

class _MeuPerfilScreenState extends State<MeuPerfilScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Meu Perfil",
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
            BuildCardProfile(
              image: AssetImage('assets/images/avatar.png'),
              nome: "João da Silva",
              profissao: "Analista de TI",
              email: "joaosilva@email.com",
              phone: "(41) 3650-555",
              cel: "(41) 98850-2222",
              rua: "Formosa do Oeste, nº 155",
              bairro: "Jardim Paloma",
              cidade: "Colombo",
              estado: "Paraná",
              empresa: "A & B Tecnologia",
              setor: "Fábrica de Software",
              cargo: "Analista de TI",
              matricula: "0558985",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: BuildButtonIcon(
                colorButton: styles.colorButtons,
                title: "ALTERAR DADOS",
                iconRight: Icons.keyboard_arrow_right,
                iconColor: Colors.white,
                iconSize: 30,
                onPressed: () => {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
