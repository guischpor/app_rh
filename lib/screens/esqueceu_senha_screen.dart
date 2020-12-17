import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/input_field.dart';
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
                    height: constrains.maxHeight * 0.10,
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
                      title: "ENVIAR SENHA",
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }
}
