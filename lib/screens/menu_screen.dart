import 'package:app_rh/screens/meu_perfil_screen.dart';
import 'package:app_rh/screens/pendencias_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/menu_drawer/build_drawer.dart';
import 'package:app_rh/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'contatos_uteis_screens.dart';
import 'demo_pag_screen.dart';
import 'envio_doc_screen.dart';
import 'eventos_reunioes_screen.dart';
import 'ferias_folgas_screen.dart';
import 'holerites_emitidos_screen.dart';
import 'marcador_ponto_screen.dart';
import 'meu_ponto_screen.dart';
import 'minhas_solicit_screen.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Styles styles = Styles();
  //int _currentIndex = 0;
  // Widget callPage(int currentIndex) {
  //   switch (currentIndex) {
  //     case 0:
  //       return MarcadorPontoScreen();
  //     case 1:
  //       return MeuPontoScreen();
  //     case 2:
  //       return HomeScreen();
  //     case 3:
  //       return EventosReunioesScreen();
  //     case 4:
  //       return MeuPerfilScreen();
  //       break;
  //     default:
  //       return HomeScreen();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;

    return Scaffold(
      backgroundColor: styles.backgroundScreens,
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: styles.textColorBlue),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: styles.textColorBlue),
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
              padding: EdgeInsets.symmetric(horizontal: 8.0),
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
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EventosReunioesScreen()));
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

  void _routeMeuPerfil() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MeuPerfilScreen()));
  }
}