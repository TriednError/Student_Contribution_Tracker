import 'dart:html';

import 'package:Student_Contribution_Tracker/screens/tutor_units_screen.dart';
import 'package:flutter/material.dart';
import 'package:Student_Contribution_Tracker/components/rounded_button.dart';

class Login extends StatelessWidget {
  static const String id = 'login_screen';

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
            Container(
              width: 200,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blue,
                style: TextStyle(color: Colors.black),
                onChanged: (value) {},
                decoration: InputDecoration(hintText: 'Enter your email'),
              ),
            ),
            Container(
              width: 200,
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blue,
                style: TextStyle(color: Colors.black),
                onChanged: (value) {},
                decoration: InputDecoration(hintText: 'Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: RoundedButton(
                color: Color(0xff133b5c),
                title: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, TutorUnitsScreen.id);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
