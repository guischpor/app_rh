import 'package:app_rh/styles/styles.dart';
import 'package:flutter/material.dart';

//Routes
import 'package:app_rh/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final styles = Styles();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
    );
  }
}
