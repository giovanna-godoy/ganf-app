import 'package:flutter/material.dart';
import 'package:ganf_app/components/option_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(106, 9, 125, .9),
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.05),
              OptionButton(
                color: Colors.black,
                text: "Crie seu robô",
                textColor: Colors.white,
                press: () {
                  Navigator.pushNamed(context, '/create');
                },
              ),
              OptionButton(
                color: Colors.black,
                text: "Controle de Produção",
                textColor: Colors.white,
                press: () {
                  Navigator.pushNamed(context, '/production');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
