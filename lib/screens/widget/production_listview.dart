import 'package:ganf_app/models/robot_model.dart';
import 'package:ganf_app/stores/production_store.dart';
import 'package:flutter/material.dart';

class ProductionListView extends StatelessWidget {
  const ProductionListView(
      {Key key, @required this.robots, @required this.productionStore})
      : super(key: key);

  final List<RobotModel> robots;
  final ProductionStore productionStore;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: robots == null ? 0 : robots.length,
      itemBuilder: (BuildContext ctx, int index) {
        return Dismissible(
          onDismissed: (direction) {
            productionStore.deleteById(robots[index].id);
          },
          key: Key(robots[index].id.toString()),
          child: cardRobot(robots[index], context),
          direction: DismissDirection.endToStart,
          background: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Card cardRobot(RobotModel robot, BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 18.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0,
      ),
      child: Stack(
        children: <Widget>[
          /*Container(
            margin: new EdgeInsets.symmetric(vertical: 16.0),
            alignment: FractionalOffset.centerLeft,
            child: new Image(
              image: new AssetImage(robot.image),
              height: 92.0,
              width: 92.0,
            ),
          ),*/
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, .9),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              title: Text(
                robot.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 13.0, left: 10.0),
                      child: Text(
                        robot.age.toString() + ' dias',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              //onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
