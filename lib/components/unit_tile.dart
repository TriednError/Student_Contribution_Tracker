import 'dart:html';

import 'package:flutter/material.dart';

class UnitTile extends StatelessWidget {
  final String title;
  final Color color;
  final Function onPressed;

  UnitTile(
      {@required this.title, @required this.color, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 5,
        color: color,
        child: Container(
          height: 70,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
