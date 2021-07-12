import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RobotListViewLoading extends StatelessWidget {
  const RobotListViewLoading({
    Key key,
  }) : super(key: key);

  static const _highLightColor = Color.fromRGBO(245, 106, 121, .1);
  static const _baseColor = Colors.white;
  static const _duration = Duration(milliseconds: 80000);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext ctx, int index) {
        return cardRobot();
      },
    );
  }

  Card cardRobot() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 18.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, .9),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          title: Shimmer.fromColors(
            highlightColor: _highLightColor,
            baseColor: _baseColor,
            period: _duration,
            child: Container(
              height: 20,
              width: 50,
              color: _highLightColor,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 13.0),
                  child: Shimmer.fromColors(
                    highlightColor: _highLightColor,
                    baseColor: _baseColor,
                    period: _duration,
                    child: Container(
                      height: 18,
                      width: 30,
                      color: _highLightColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          trailing: Shimmer.fromColors(
            highlightColor: _highLightColor,
            baseColor: _baseColor,
            period: _duration,
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
