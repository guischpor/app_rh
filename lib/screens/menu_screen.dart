import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/app_bar.dart';
import 'package:app_rh/widgets/menu_drawer/build_drawer.dart';
import 'package:app_rh/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Styles styles = Styles();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: appBar(
        titleBar: 'Home',
      ),
      drawer: BuildDrawer(),
      body: Container(
        width: size.width,
        height: size.height,
        child: FutureBuilder(
          builder: (_, constrains) {
            return GridView.count(
              //shrinkWrap: true,
              crossAxisCount: 3,
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 10,
              ),
              children: <Widget>[
                MenuItem(
                  onTap: _routeEventoReunioes,
                  icon: Icons.perm_contact_calendar,
                  iconColor: Colors.white,
                  title: "Eventos e Reuniões",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeDemoPagamento,
                  icon: Icons.monetization_on,
                  iconColor: Colors.white,
                  title: "Demonstrativo de Pagamento",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeHolerites,
                  icon: Icons.assignment,
                  iconColor: Colors.white,
                  title: "Holerites Emitidos",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeFeriasFolgas,
                  icon: Icons.group,
                  iconColor: Colors.white,
                  title: "Férias e Folgas",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeMarcadorPonto,
                  icon: Icons.gps_fixed,
                  iconColor: Colors.white,
                  title: "Marcador de Ponto",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeMeuPonto,
                  icon: Icons.person_pin,
                  iconColor: Colors.white,
                  title: "Meu Ponto",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeMinhasSolicit,
                  icon: Icons.file_download,
                  iconColor: Colors.white,
                  title: "Minhas Solicitações",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeEnvioDoc,
                  icon: Icons.file_upload,
                  iconColor: Colors.white,
                  title: "Envio de Documentos",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routePendencias,
                  icon: Icons.attach_file,
                  iconColor: Colors.white,
                  title: "Pendências",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeContatosUteis,
                  icon: Icons.phone,
                  iconColor: Colors.white,
                  title: "Contatos Úteis",
                  colorTitle: Colors.white,
                ),
                MenuItem(
                  onTap: _routeMeuPerfil,
                  icon: Icons.person,
                  iconColor: Colors.white,
                  title: "Meu Perfil",
                  colorTitle: Colors.white,
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void _routeEventoReunioes() async {
    await Navigator.pushNamed(context, 'eventos_reunioes');
  }

  void _routeDemoPagamento() async {
    await Navigator.pushNamed(context, 'demo_pagamento');
  }

  void _routeHolerites() async {
    await Navigator.pushNamed(context, 'holerite_emitidos');
  }

  void _routeFeriasFolgas() async {
    await Navigator.pushNamed(context, 'ferias_folgas');
  }

  void _routeMarcadorPonto() async {
    await Navigator.pushNamed(context, 'marcador_ponto');
  }

  void _routeMeuPonto() async {
    await Navigator.pushNamed(context, 'meu_ponto');
  }

  void _routeMinhasSolicit() async {
    await Navigator.pushNamed(context, 'minhas_solicitacoes');
  }

  void _routeEnvioDoc() async {
    await Navigator.pushNamed(context, 'envio_documentos');
  }

  void _routePendencias() async {
    await Navigator.pushNamed(context, 'pendencia');
  }

  void _routeContatosUteis() async {
    await Navigator.pushNamed(context, 'contatos_uteis');
  }

  void _routeMeuPerfil() async {
    await Navigator.pushNamed(context, 'meu_perfil');
  }
}
