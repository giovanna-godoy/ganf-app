import 'package:flutter/material.dart';
import 'package:ganf_app/screens/home_screen.dart';
import 'package:ganf_app/screens/production_screen.dart';
import 'package:ganf_app/screens/splash_screen.dart';
import 'package:ganf_app/screens/catalog_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
          '/production': (context) => ProductionScreen(),
          '/create': (context) => CatalogScreen(),
        },
        debugShowCheckedModeBanner: false);
  }
}
