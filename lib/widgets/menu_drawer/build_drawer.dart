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
            onTap: _routeEventoReunioes,
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

  void _routeEventoReunioes() async {
    Navigator.pushNamed(context, 'eventos_reunioes');
  }

  void _routeDemoPagamento() async {
    Navigator.pushNamed(context, 'demo_pagamento');
  }

  void _routeHolerites() async {
    Navigator.pushNamed(context, 'holerite_emitidos');
  }

  void _routeFeriasFolgas() async {
    Navigator.pushNamed(context, 'ferias_folgas');
  }

  void _routeMarcadorPonto() async {
    Navigator.pushNamed(context, 'marcador_ponto');
  }

  void _routeMeuPonto() async {
    Navigator.pushNamed(context, 'meu_ponto');
  }

  void _routeMinhasSolicit() async {
    Navigator.pushNamed(context, 'minhas_solicitacoes');
  }

  void _routeEnvioDoc() async {
    Navigator.pushNamed(context, 'envio_documentos');
  }

  void _routePendencias() async {
    Navigator.pushNamed(context, 'pendencia');
  }

  void _routeContatosUteis() async {
    Navigator.pushNamed(context, 'contatos_uteis');
  }

  void _routeExit() async {
    Navigator.pushNamed(context, 'login');
  }
}
