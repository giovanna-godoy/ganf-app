import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ganf_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return HomeScreen();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 0, 0, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[Image.asset('assets/ganf-logo.png')],
      ),
    );
  }
}
