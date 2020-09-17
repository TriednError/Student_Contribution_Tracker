import 'package:flutter/material.dart';
import 'package:Student_Contribution_Tracker/components/rounded_button.dart';
import 'login.dart';

class SelectionScreen extends StatelessWidget {
  static const String id = 'selection_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              height: 400,
              child: Image.asset('images/monash_logo2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "I'm a ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, Login.id);
              },
              color: Color(0xff133b5c),
              child: Container(
                child: Text(
                  'Tutor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Color(0xff133b5c),
              child: Container(
                child: Text(
                  'Student',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
