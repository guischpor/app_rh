import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/input_field.dart';
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
                    obscure: false,
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
                    obscure: false,
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
                    obscure: false,
                    enable: true,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    child: BuildButton(
                      colorButton: styles.colorButtons,
                      onPressed: () => {},
                      title: "SOLICITAR",
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
