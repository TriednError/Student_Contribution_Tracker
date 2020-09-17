import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Group extends StatelessWidget {
  final String name;
  Function onPressed;

  Group({@required this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          color: Colors.white70,
          child: Column(
            children: [
              FlatButton(
                onPressed: onPressed,
                child: Text(
                  name,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
