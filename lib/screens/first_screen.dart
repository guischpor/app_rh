import 'package:app_rh/screens/login_screen.dart';
import 'package:app_rh/screens/solicitar_acesso_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:app_rh/widgets/build_button.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: styles.backgroundGradientScreen,
      ),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              height: 140,
              child: Image(
                image: AssetImage('assets/images/logo_rh_branco.png'),
              ),
            ),
            SizedBox(
              height: 180,
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
        ),
      ),
    ));
  }

  //function navigation screens
  void routeLoginScreen() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  void routeSolicitarAcessoScreen() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SolicitarAcessoScreen()));
  }
}
