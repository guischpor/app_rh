import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:app_rh/widgets/title_page.dart';
import 'package:flutter/material.dart';

class EsqueceuSenhaScreen extends StatefulWidget {
  @override
  _EsqueceuSenhaScreenState createState() => _EsqueceuSenhaScreenState();
}

class _EsqueceuSenhaScreenState extends State<EsqueceuSenhaScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    //var size = mediaQuery.size;

    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          'Esqueceu a senha',
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.textColorBlue),
      ),
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: LayoutBuilder(
          builder: (_, constrains) {
            return ListView(
              padding: EdgeInsets.all(16),
              children: [
                SizedBox(
                  height: constrains.maxHeight * 0.01,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: TitlePage(
                    title: "Por favor, digite o seu endereço de e-mail.",
                    color: styles.textColorBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    textAlign: TextAlign.center,
                  ),
                ),
                InputField(
                  hint: "Email",
                  preffix: Icon(
                    Icons.email,
                    //color: styles.iconColorGrey,
                  ),
                  textInputType: TextInputType.text,
                  onChanged: (value) => {},
                  obscureText: false,
                  enable: true,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  child: BuildButton(
                    colorButton: styles.colorButtons,
                    onPressed: () => {_showAlerta(context)},
                    title: "ENVIAR SENHA",
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _showAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          content: Container(
            height: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 130,
                  color: styles.iconColorBlue,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: TitlePage(
                    title: "Esqueceu a sua senha, não se preocupe",
                    color: styles.textColorAlert,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TitlePage(
                    title: "Você receberá a sua senha de acesso no seu email.",
                    color: styles.iconColorGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.only(top: 15),
                  child: BuildButton(
                    colorButton: styles.colorButtons,
                    onPressed: _routeLoginPage,
                    title: "OK",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _routeLoginPage() async {
    Navigator.pushNamed(context, 'login');
  }
}
