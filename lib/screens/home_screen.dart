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
            height: 32,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: <Widget>[
              MenuItem(
                onTap: () => {},
                icon: Icons.perm_contact_calendar,
                iconColor: styles.textColorBlue,
                title: "Eventos e Reuniões",
              ),
            ],
          )
        ],
      ),
    );
  }
}
