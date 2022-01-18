import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:app_rh/widgets/show_alert.dart';
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
      appBar: appBar(titleBar: 'Esqueceu a senha'),
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: LayoutBuilder(
          builder: (_, constrains) {
            return ListView(
              padding: EdgeInsets.all(16),
              children: [
                SizedBox(height: constrains.maxHeight * 0.01),
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
                Form(
                  child: InputField(
                    hint: "Email",
                    preffix: Icon(
                      Icons.email,
                      //color: styles.iconColorGrey,
                    ),
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  child: BuildButton(
                    colorButton: styles.colorButtons,
                    onPressed: () => {
                      showAlerta(
                        context: context,
                        icon: Icons.lock,
                        title: "Esqueceu a sua senha, não se preocupe",
                        message:
                            "Você receberá a sua senha de acesso no seu email.",
                        titleButton: 'OK',
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                      ),
                    },
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
}
