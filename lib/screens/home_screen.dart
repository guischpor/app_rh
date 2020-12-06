import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/menu_drawer/build_drawer.dart';
import 'package:app_rh/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Styles styles = Styles();

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(12, 160, 190, 1.0));
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: marcador_de_ponto',
      style: optionStyle,
    ),
    Text(
      'Index 1: home',
      style: optionStyle,
    ),
    Text(
      'Index 2: meu_perfil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed),
            label: 'Marcador de Ponto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Meu Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: styles.textColorBlue,
        onTap: _onItemTapped,
      ),
      drawer: BuildDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: <Widget>[
              MenuItem(
                onTap: () => {},
                icon: Icons.perm_contact_calendar,
                iconColor: Colors.white,
                title: "Eventos e Reuniões",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.monetization_on,
                iconColor: Colors.white,
                title: "Demonstrativo de Pagamento",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.assignment,
                iconColor: Colors.white,
                title: "Holerites Emitidos",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.group,
                iconColor: Colors.white,
                title: "Férias e Folgas",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.gps_fixed,
                iconColor: Colors.white,
                title: "Marcador de Ponto",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.person_pin,
                iconColor: Colors.white,
                title: "Meu Ponto",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.file_download,
                iconColor: Colors.white,
                title: "Minhas Solicitações",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.file_upload,
                iconColor: Colors.white,
                title: "Envio de Documentos",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.attach_file,
                iconColor: Colors.white,
                title: "Pendências",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.phone,
                iconColor: Colors.white,
                title: "Contatos Úteis",
              ),
              MenuItem(
                onTap: () => {},
                icon: Icons.person,
                iconColor: Colors.white,
                title: "Meu Perfil",
              )
            ],
          ),
        ],
      ),
    );
  }
}
