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
  bool _isVisible = false;
  String? email;
  String? password;

  @override
  void initState() {
    super.initState();
    _isVisible = false;
  }

  void _visiblePassword() {
    setState(() {
      _isVisible ? _isVisible = false : _isVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    //var size = mediaQuery.size;

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
                SizedBox(height: constrains.maxHeight * 0.12),
                Container(
                  height: constrains.maxHeight * .2,
                  child: Image(
                    image: AssetImage('assets/images/logo_rh_azul.png'),
                  ),
                ),
                SizedBox(height: constrains.maxHeight * 0.12),
                Form(
                  child: Column(
                    children: [
                      InputField(
                        hint: "Email",
                        preffix: Icon(
                          Icons.email,
                          //color: styles.iconColorGrey,
                        ),
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 15),
                      InputField(
                        hint: "Senha",
                        preffix: Icon(
                          Icons.lock,
                          //color: styles.iconColorGrey,
                        ),
                        textInputType: TextInputType.text,
                        obscureText: !_isVisible,
                        suffix: CustomIconButton(
                          radius: 32,
                          iconData: _isVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onTap: _visiblePassword,
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: BuildButton(
                    colorButton: styles.colorButtons,
                    onPressed: routeHomeScreen,
                    title: "ENTRAR",
                  ),
                ),
                SizedBox(height: constrains.maxHeight * 0.05),
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
    await Navigator.pushNamed(context, 'home');
  }

  void routeEsqueceuSenhaScreen() async {
    await Navigator.pushNamed(context, 'esqueceu_senha');
  }

  void routeSolicitarAcessoScree() async {
    await Navigator.pushNamed(context, 'solicitar_acesso');
  }
}
