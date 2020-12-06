import 'dart:js';
import 'package:app_rh/screens/home_screen.dart';
import 'package:app_rh/screens/login_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/menu_drawer/build_info.dart';
import 'package:app_rh/widgets/menu_drawer/tiles_drawer.dart';
import 'package:flutter/material.dart';

class BuildDrawer extends StatefulWidget {
  @override
  _BuildDrawerState createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  Styles styles = Styles();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: styles.backgroundDrawerInfo),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: BuildInfo(),
          ),
          TilesDrawer(
            icon: Icons.home,
            title: "Home",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.perm_contact_calendar,
            title: "Eventos e Reuniões",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.monetization_on,
            title: "Demonstrativo de Pagamento",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.assignment,
            title: "Holerites Emitidos",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.group,
            title: "Férias e Folgas",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.gps_fixed,
            title: "Marcador de Ponto",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.person_pin,
            title: "Meu Ponto",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.file_download,
            title: "Minhas Solicitações",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.file_upload,
            title: "Envio de Documentos",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.attach_file,
            title: "Pendências",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.phone,
            title: "Contatos Úteis",
            onTap: () => {},
          ),
          TilesDrawer(
            icon: Icons.exit_to_app,
            title: "Sair",
            onTap: () => {},
            //onTap: _routeExit,
          ),
        ],
      ),
    );
  }

  // void _routeExit() async {
  //   Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(
  //       builder: (context) => LoginScreen(),
  //     ),
  //   );
  // }
}
