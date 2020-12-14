import 'package:app_rh/screens/menu_screen.dart';
import 'package:app_rh/screens/meu_perfil_screen.dart';
import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/menu_drawer/build_drawer.dart';
import 'package:flutter/material.dart';
import 'eventos_reunioes_screen.dart';
import 'marcador_ponto_screen.dart';
import 'meu_ponto_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Styles styles = Styles();
  int _currentIndex = 0;
  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return MarcadorPontoScreen();
      case 1:
        return MeuPontoScreen();
      case 2:
        return MenuScreen();
      case 3:
        return EventosReunioesScreen();
      case 4:
        return MeuPerfilScreen();
        break;
      default:
        return MenuScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    //var mediaQuery = MediaQuery.of(context);
    //var size = mediaQuery.size;

    return Scaffold(
      backgroundColor: styles.backgroundScreens,
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
            ),
            label: 'Marcar Ponto',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
            ),
            label: 'Meu Ponto',
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
            ),
            label: 'Eventos',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Meu Perfil',
            backgroundColor: Colors.white,
          ),
        ],
        onTap: (index) {
          _currentIndex = index;
          setState(() {
            switch (_currentIndex) {
            }
          });
        },
      ),
      drawer: BuildDrawer(),
      body: callPage(_currentIndex),
    );
  }
}
