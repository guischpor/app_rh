import 'package:app_rh/styles/styles.dart';
import 'package:app_rh/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Styles styles = Styles();
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
      drawer: null,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: <Widget>[
          SizedBox(
            height: 20,
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
          )
        ],
      ),
    );
  }
}
