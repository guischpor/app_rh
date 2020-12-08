import 'package:app_rh/screens/meu_perfil_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

class BuildInfo extends StatefulWidget {
  @override
  _BuildInfoState createState() => _BuildInfoState();
}

class _BuildInfoState extends State<BuildInfo> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(21),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(80),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/avatar.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "João da Silva",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "ANALISTA DE TI",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  InkWell(
                    onTap: _routeMeuPerfil,
                    child: Text(
                      "EDITAR PERFIL",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _routeMeuPerfil() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MeuPerfilScreen()));
  }
}
