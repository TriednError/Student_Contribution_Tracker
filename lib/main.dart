import 'dart:html';

import 'package:Student_Contribution_Tracker/Model/projects.dart';
import 'package:Student_Contribution_Tracker/screens/units_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/login.dart';
import 'screens/selection_screen.dart';
import 'screens/tutor_units_screen.dart';

void main() => runApp(SCT()); // Student Contribution Tracker -> SCT

class SCT extends StatelessWidget {
  const SCT({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SelectionScreen.id,
      routes: {
        Login.id: (context) => Login(),
        SelectionScreen.id: (context) => SelectionScreen(),
        TutorUnitsScreen.id: (context) => TutorUnitsScreen(),
        UnitsProjectScreen.id: (context) => UnitsProjectScreen()
      },
    );
  }
}
