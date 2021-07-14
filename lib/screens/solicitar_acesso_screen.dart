import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:app_rh/widgets/title_page.dart';
import 'package:flutter/material.dart';

class SolicitarAcessoScreen extends StatefulWidget {
  @override
  _SolicitarAcessoScreenState createState() => _SolicitarAcessoScreenState();
}

class _SolicitarAcessoScreenState extends State<SolicitarAcessoScreen> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    //var size = mediaQuery.size;

    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          "Solicitar acesso",
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
                  height: constrains.maxHeight * 0.10,
                ),
                InputField(
                  hint: "Matrícula",
                  preffix: Icon(
                    Icons.vpn_key,
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
                InputField(
                  hint: "Nome",
                  preffix: Icon(
                    Icons.person,
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
                    title: "SOLICITAR",
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
                  Icons.account_circle,
                  size: 130,
                  color: styles.iconColorBlue,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: TitlePage(
                    title: "Você acabou de solicitar o acesso a sua conta ",
                    color: styles.textColorAlert,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TitlePage(
                    title:
                        "Você receberá as informações e a senha de acesso no seu email.",
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
