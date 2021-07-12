import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ganf_app/stores/robot_store.dart';
import 'package:ganf_app/screens/widget/robot_listview.dart';
import 'package:ganf_app/screens/widget/robot_listview_loading.dart';

class CatalogScreen extends StatefulWidget {
  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  RobotStore robotStore = RobotStore();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(106, 9, 125, .9),
        title: Text(
          'Selecione um robô do catálogo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Observer(
        builder: (ctx) {
          if (robotStore.isLoading) {
            return RobotListViewLoading();
          } else {
            return RobotListView(
                robots: robotStore.filtered, robotStore: robotStore);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(106, 9, 125, .9),
        child: Icon(Icons.cached),
        onPressed: () async {
          print('***** Atualizando *****');
          robotStore.findAllRobot();
        },
      ),
    );
  }
}
