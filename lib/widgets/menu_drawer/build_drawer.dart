import 'package:app_rh/screens/contatos_uteis_screens.dart';
import 'package:app_rh/screens/demo_pag_screen.dart';
import 'package:app_rh/screens/envio_doc_screen.dart';
import 'package:app_rh/screens/eventos_reunioes_screen.dart';
import 'package:app_rh/screens/ferias_folgas_screen.dart';
import 'package:app_rh/screens/holerites_emitidos_screen.dart';
import 'package:app_rh/screens/login_screen.dart';
import 'package:app_rh/screens/marcador_ponto_screen.dart';
import 'package:app_rh/screens/meu_ponto_screen.dart';
import 'package:app_rh/screens/minhas_solicit_screen.dart';
import 'package:app_rh/screens/pendencias_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/menu_drawer/build_info.dart';
import 'package:app_rh/widgets/menu_drawer/tiles_drawer.dart';
import 'package:flutter/material.dart';

class BuildDrawer extends StatefulWidget {
  const BuildDrawer({Key key}) : super(key: key);

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
            icon: Icons.perm_contact_calendar,
            title: "Eventos e Reuniões",
            onTap: _routeEventoFerias,
          ),
          TilesDrawer(
            icon: Icons.monetization_on,
            title: "Demonstrativo de Pagamento",
            onTap: _routeDemoPagamento,
          ),
          TilesDrawer(
            icon: Icons.assignment,
            title: "Holerites Emitidos",
            onTap: _routeHolerites,
          ),
          TilesDrawer(
            icon: Icons.group,
            title: "Férias e Folgas",
            onTap: _routeFeriasFolgas,
          ),
          TilesDrawer(
            icon: Icons.gps_fixed,
            title: "Marcador de Ponto",
            onTap: _routeMarcadorPonto,
          ),
          TilesDrawer(
            icon: Icons.person_pin,
            title: "Meu Ponto",
            onTap: _routeMeuPonto,
          ),
          TilesDrawer(
            icon: Icons.file_download,
            title: "Minhas Solicitações",
            onTap: _routeMinhasSolicit,
          ),
          TilesDrawer(
            icon: Icons.file_upload,
            title: "Envio de Documentos",
            onTap: _routeEnvioDoc,
          ),
          TilesDrawer(
            icon: Icons.attach_file,
            title: "Pendências",
            onTap: _routePendencias,
          ),
          TilesDrawer(
            icon: Icons.phone,
            title: "Contatos Úteis",
            onTap: _routeContatosUteis,
          ),
          TilesDrawer(
            icon: Icons.exit_to_app,
            title: "Sair",
            onTap: _routeExit,
          ),
        ],
      ),
    );
  }

  void _routeEventoFerias() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EventosFeriasScreen()));
  }

  void _routeDemoPagamento() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DemoPagamentoScreen()));
  }

  void _routeHolerites() async {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => HoleritesEmitidosScreen()));
  }

  void _routeFeriasFolgas() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => FeriasFolgasScreen()));
  }

  void _routeMarcadorPonto() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MarcadorPontoScreen()));
  }

  void _routeMeuPonto() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MeuPontoScreen()));
  }

  void _routeMinhasSolicit() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MinhasSolicitScreen()));
  }

  void _routeEnvioDoc() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EnvioDocScreen()));
  }

  void _routePendencias() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PendenciaScreen()));
  }

  void _routeContatosUteis() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ContatosUteisScreen()));
  }

  void _routeExit() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }
}
