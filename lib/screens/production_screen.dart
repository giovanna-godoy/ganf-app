import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ganf_app/stores/production_store.dart';
import 'package:ganf_app/screens/widget/production_listview.dart';
import 'package:ganf_app/screens/widget/production_listview_loading.dart';

class ProductionScreen extends StatefulWidget {
  @override
  _ProductionScreenState createState() => _ProductionScreenState();
}

class _ProductionScreenState extends State<ProductionScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  ProductionStore productionStore = ProductionStore();

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
          'Linha de Produção',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Observer(
        builder: (ctx) {
          if (productionStore.isLoading) {
            return ProductionListViewLoading();
          } else {
            return ProductionListView(
                robots: productionStore.filtered,
                productionStore: productionStore);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(106, 9, 125, .9),
        child: Icon(Icons.cached),
        onPressed: () async {
          print('***** Atualizando Linha*****');
          productionStore.findAllRobot();
        },
      ),
    );
  }
}
