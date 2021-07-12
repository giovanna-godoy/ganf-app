import 'package:ganf_app/models/robot_model.dart';
import 'package:ganf_app/stores/robot_store.dart';
import 'package:flutter/material.dart';

class RobotListView extends StatelessWidget {
  const RobotListView(
      {Key key, @required this.robots, @required this.robotStore})
      : super(key: key);

  final List<RobotModel> robots;
  final RobotStore robotStore;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: robots == null ? 0 : robots.length,
      itemBuilder: (BuildContext ctx, int index) {
        return Container(
          child: cardRobot(robots[index], context),
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
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(top: 13.0),
                      child: Text(
                        robot.description,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.check,
                color: Colors.white,
                size: 30.0,
              ),
              onTap: () {
                final scaffold = Scaffold.of(context);
                scaffold.showSnackBar(
                  SnackBar(
                    content: const Text(
                      'Robô inserido na linha de produção!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    action: SnackBarAction(
                        label: 'Desfazer',
                        onPressed: scaffold.hideCurrentSnackBar),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
