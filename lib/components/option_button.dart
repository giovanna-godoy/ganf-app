import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const OptionButton({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 350,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
