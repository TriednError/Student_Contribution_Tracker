import 'package:Student_Contribution_Tracker/components/rounded_button.dart';
import 'package:Student_Contribution_Tracker/components/single_project_tile.dart';
import 'package:Student_Contribution_Tracker/screens/units_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:Student_Contribution_Tracker/components/unit_tile.dart';

// ignore: must_be_immutable
class TutorUnitsScreen extends StatelessWidget {
  static const String id = 'tutor_units_screen';

  Color color1 = Color(0xff9d65c9);
  Color color2 = Color(0xff68b0ab);
  Color color3 = Color(0xff5d54a4);
  Color color4 = Color(0xff8d93ab);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff133b5c),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text(
                        'Student Contribution Tracker',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Container(
                        width: 150,
                        child: Image.asset('images/monash_logo.png'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Column(
                        children: [
                          Text('Units',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25)),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.8,
                            width: MediaQuery.of(context).size.width * 0.3,
                            color: Colors.white70,
                            child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return UnitTile(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, UnitsProjectScreen.id);
                                  },
                                  title: 'FIT3078',
                                  color: color2,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Column(
                      children: [
                        Text('All projects',
                            style:
                                TextStyle(color: Colors.black, fontSize: 25)),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.2,
                          color: Colors.white70,
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return SingleProjectTile(
                                  title: 'FIT2101 Assignment', color: color4);
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
