import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

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
              height: 120,
            ),
            Container(
              height: 140,
              child: Image(
                image: AssetImage('assets/images/logo_rh_branco.png'),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
