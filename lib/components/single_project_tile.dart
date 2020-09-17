import 'package:flutter/material.dart';

class SingleProjectTile extends StatelessWidget {
  final String title;
  final Color color;

  SingleProjectTile({@required this.title, @required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: MaterialButton(
        onPressed: () {},
        elevation: 5,
        color: color,
        child: Container(
          height: 40,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
