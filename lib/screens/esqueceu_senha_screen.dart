import 'package:app_rh/stores/esqueceu_senha_store.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:app_rh/widgets/title_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class EsqueceuSenhaScreen extends StatefulWidget {
  @override
  _EsqueceuSenhaScreenState createState() => _EsqueceuSenhaScreenState();
}

class _EsqueceuSenhaScreenState extends State<EsqueceuSenhaScreen> {
  Styles styles = Styles();
  final EsqueceuSenhaStore esqueceuSenhaStore = EsqueceuSenhaStore();

  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    // ignore: todo
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    disposer = reaction((_) => esqueceuSenhaStore.sending, (sending) {
      if (sending) _showAlerta(context);
    });
  }

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
                Observer(
                  builder: (_) {
                    return InputField(
                      hint: "Email",
                      preffix: Icon(
                        Icons.email,
                        //color: styles.iconColorGrey,
                      ),
                      textInputType: TextInputType.emailAddress,
                      onChanged: esqueceuSenhaStore.setEmail,
                      obscure: false,
                      enable: !esqueceuSenhaStore.loading,
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Observer(
                  builder: (_) {
                    return Container(
                      height: 50,
                      child: RaisedButton(
                        color: styles.colorButtons,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        onPressed: esqueceuSenhaStore.sendPressed,
                        child: esqueceuSenhaStore.loading
                            ? SizedBox(
                                height: 25,
                                width: 25,
                                child: CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                ),
                              )
                            : Text(
                                "ENVIAR SENHA",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                      ),
                    );
                  },
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

  @override
  void dispose() {
    // TODO: implement dispose
    dispose();
    super.dispose();
  }
}
