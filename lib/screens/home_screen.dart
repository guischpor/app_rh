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

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Styles styles = Styles();
  int _currentIndex = 0;
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: styles.iconColorBlue,
        unselectedItemColor: styles.textColorGrey,
        selectedFontSize: 14,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.gps_fixed,
              //color: styles.textColorGrey,
            ),
            label: 'Marcar Ponto',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
              //color: styles.textColorGrey,
            ),
            label: 'Meu Ponto',
            //backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              //color: styles.iconColorGrey,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_contact_calendar,
              //color: styles.textColorGrey,
            ),
            label: 'Eventos',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              //color: styles.textColorGrey,
            ),
            label: 'Meu Perfil',
            backgroundColor: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (_currentIndex) {
              case 0:
                {
                  _routeMarcadorPonto();
                }
                break;
              case 1:
                {
                  _routeMeuPonto();
                }
                break;
              case 3:
                {
                  _routeEventoFerias();
                }
                break;
              case 4:
                {
                  _routeMeuPerfil();
                }
                break;
            }
          });
        },
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
                    onTap: _routeEventoFerias,
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
          )),
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

  void _routeMeuPerfil() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MeuPerfilScreen()));
  }
}

//
