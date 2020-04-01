// import 'package:componentes_flutter/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:componentes_flutter/src/pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
