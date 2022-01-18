import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:app_rh/widgets/show_alert.dart';
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
      appBar: appBar(titleBar: 'Solicitar Acesso'),
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: LayoutBuilder(
          builder: (_, constrains) {
            return ListView(
              padding: EdgeInsets.all(16),
              children: [
                SizedBox(height: constrains.maxHeight * 0.10),
                Form(
                  child: Column(
                    children: [
                      InputField(
                        hint: "Matrícula",
                        preffix: Icon(
                          Icons.vpn_key,
                          //color: styles.iconColorGrey,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(height: 15),
                      InputField(
                        hint: "Nome",
                        preffix: Icon(
                          Icons.person,
                          //color: styles.iconColorGrey,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                InputField(
                  hint: "Email",
                  preffix: Icon(
                    Icons.email,
                    //color: styles.iconColorGrey,
                  ),
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  child: BuildButton(
                    colorButton: styles.colorButtons,
                    onPressed: () => {
                      showAlerta(
                        context: context,
                        icon: Icons.account_circle,
                        title: "Você acabou de solicitar o acesso a sua conta",
                        message:
                            "Você receberá as informações e a senha de acesso no seu email.",
                        titleButton: 'OK',
                        onPressed: () {
                          Navigator.pop(context, false);
                        },
                      ),
                    },
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
}
