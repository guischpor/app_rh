import 'package:app_rh/stores/login_store.dart';
import 'package:app_rh/styles/styles.dart';
//import 'package:app_rh/widgets/build_button.dart';
import 'package:app_rh/widgets/build_flat_button.dart';
import 'package:app_rh/widgets/custom_icon_button.dart';
import 'package:app_rh/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Styles styles = Styles();
  LoginStore loginStore;

  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    loginStore = Provider.of<LoginStore>(context);

    disposer = reaction((_) => loginStore.loggedIn, (loggedIn) {
      if (loggedIn) Navigator.pushNamed(context, 'home');
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
                Observer(
                  builder: (_) {
                    return InputField(
                      hint: "Email",
                      preffix: Icon(
                        Icons.email,
                        //color: styles.iconColorGrey,
                      ),
                      textInputType: TextInputType.emailAddress,
                      onChanged: loginStore.setEmail,
                      obscure: false,
                      enable: !loginStore.loading,
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Observer(
                  builder: (_) {
                    return InputField(
                      hint: "Senha",
                      preffix: Icon(
                        Icons.lock,
                        //color: styles.iconColorGrey,
                      ),
                      onChanged: loginStore.setPassword,
                      obscure: !loginStore.passwordVisible,
                      enable: !loginStore.loading,
                      suffix: CustomIconButton(
                        radius: 32,
                        iconData: loginStore.passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        onTap: loginStore.togglePasswordVisibility,
                      ),
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
                        onPressed: loginStore.loginPressed,
                        child: loginStore.loading
                            ? SizedBox(
                                height: 25,
                                width: 25,
                                child: CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                ),
                              )
                            : Text(
                                "ENTRAR",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: constrains.maxHeight * 0.05,
                ),
                BuildFlatButton(
                  title: "ESQUECEU A SUA SENHA? CLIQUE AQUI!",
                  textColor: styles.textColorGrey,
                  onPressed: routeEsqueceuSenhaScreen,
                ),
                // BuildFlatButton(
                //   title: "SOLICITAR ACESSO!",
                //   textColor: styles.textColorGrey,
                //   onPressed: routeSolicitarAcessoScree,
                // ),
              ],
            );
          },
        ),
      ),
    );
  }

  //funcao route screens
  void routeHomeScreen() async {
    Navigator.pushNamed(context, 'home');
  }

  void routeEsqueceuSenhaScreen() async {
    Navigator.pushNamed(context, 'esqueceu_senha');
  }

  void routeSolicitarAcessoScree() async {
    Navigator.pushNamed(context, 'solicitar_acesso');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
