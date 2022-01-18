import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:app_rh/widgets/build_button.dart';

class FirstScreen extends StatefulWidget {

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: styles.backgroundGradientScreen,
          ),
          width: size.width,
          height: size.height,
          child: LayoutBuilder(
            builder: (_, constrains) {
              return ListView(
                padding: EdgeInsets.all(16),
                children: [
                  SizedBox(
                    height: constrains.maxHeight * 0.3,
                  ),
                  Container(
                    height: constrains.maxHeight * .2,
                    child: Image(
                      image: AssetImage('assets/images/logo_rh_branco.png'),
                    ),
                  ),
                  SizedBox(
                    height: constrains.maxHeight * 0.25,
                  ),
                  Container(
                    height: 50,
                    child: BuildButton(
                      colorButton: styles.buttonBlue,
                      onPressed: routeLoginScreen,
                      title: "LOGIN",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    child: BuildButton(
                      colorButton: styles.buttonBlue,
                      onPressed: routeSolicitarAcessoScreen,
                      title: "SOLICITAR ACESSO",
                    ),
                  ),
                ],
              );
            },
          )),
    );
  }

  //function navigation screens
  void routeLoginScreen() async {
    Navigator.pushNamed(context, 'login');
  }

  void routeSolicitarAcessoScreen() async {
    Navigator.pushNamed(context, 'solicitar_acesso');
  }
}
