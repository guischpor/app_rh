import 'package:app_rh/screens/esqueceu_senha_screen.dart';
import 'package:app_rh/screens/solicitar_acesso_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/build_flat_button.dart';
import 'package:app_rh/widgets/custom_icon_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            height: 140,
            child: Image(
              image: AssetImage('assets/images/logo_rh_azul.png'),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InputField(
            hint: "Matrícula",
            preffix: Icon(
              Icons.vpn_key,
              //color: styles.iconColorGrey,
            ),
            textInputType: TextInputType.text,
            onChanged: (value) => {},
            obscure: false,
            enable: true,
          ),
          SizedBox(
            height: 15,
          ),
          InputField(
            hint: "Senha",
            preffix: Icon(
              Icons.lock,
              //color: styles.iconColorGrey,
            ),
            textInputType: TextInputType.text,
            onChanged: (value) => {},
            obscure: true,
            enable: true,
            suffix: CustomIconButton(
              radius: 32,
              iconData: Icons.visibility,
              onTap: () => {},
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            child: BuildButton(
              colorButton: styles.colorButtons,
              onPressed: () => {},
              title: "ENTRAR",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          BuildFlatButton(
            title: "ESQUECEU A SUA SENHA? CLIQUE AQUI!",
            textColor: styles.textColorGrey,
            onPressed: routeEsqueceuSenhaScreen,
          ),
          BuildFlatButton(
            title: "SOLICITAR ACESSO!",
            textColor: styles.textColorGrey,
            onPressed: routeSolicitarAcessoScree,
          ),
        ],
      ),
    );
  }

  //funcao route screens
  void routeEsqueceuSenhaScreen() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EsqueceuSenhaScreen()));
  }

  void routeSolicitarAcessoScree() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SolicitarAcessoScreen()));
  }
}
