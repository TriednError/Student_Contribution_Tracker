import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color colorLabel;
  final String description;
  final String workCategory;

  // var colors = [
  //   Colors.red,
  //   Colors.blue,
  //   Colors.green,
  //   Colors.orange,
  //   Colors.purple,
  //   Colors.amber,
  //   Colors.yellow,
  //   Colors.teal,
  //   Colors.indigo,
  //   Colors.pink,
  //   Colors.cyan
  // ];

  Project(
      {@required this.title,
      this.onPressed,
      this.colorLabel,
      this.description,
      this.workCategory});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed: onPressed,
                      child: Text(title),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        color: colorLabel,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 2, bottom: 2),
                            child: Text(workCategory),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(40)),
                      child: Container(
                        width: 40,
                        height: 40,
                        color: colorLabel,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
