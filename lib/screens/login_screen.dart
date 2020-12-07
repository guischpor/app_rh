import 'package:app_rh/screens/esqueceu_senha_screen.dart';
import 'package:app_rh/screens/solicitar_acesso_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/build_flat_button.dart';
import 'package:app_rh/widgets/custom_icon_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        child: LayoutBuilder(
          builder: (_, constrains) {
            return ListView(
              padding: EdgeInsets.all(16),
              children: [
                SizedBox(
                  height: constrains.maxHeight * 0.12,
                ),
                Container(
                  height: constrains.maxHeight * .2,
                  child: Image(
                    image: AssetImage('assets/images/logo_rh_azul.png'),
                  ),
                ),
                SizedBox(
                  height: constrains.maxHeight * 0.12,
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
                    onPressed: routeHomeScreen,
                    title: "ENTRAR",
                  ),
                ),
                SizedBox(
                  height: constrains.maxHeight * 0.05,
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
            );
          },
        ),
      ),
    );
  }

  //funcao route screens
  void routeHomeScreen() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void routeEsqueceuSenhaScreen() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EsqueceuSenhaScreen()));
  }

  void routeSolicitarAcessoScree() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SolicitarAcessoScreen()));
  }
}
