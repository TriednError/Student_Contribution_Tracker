import 'dart:js';

import 'package:Student_Contribution_Tracker/components/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Student_Contribution_Tracker/Model/projects.dart';
import 'package:provider/provider.dart';

class ProjectDialog extends StatefulWidget {
  @override
  _ProjectDialogState createState() => _ProjectDialogState();
}

class _ProjectDialogState extends State<ProjectDialog> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        color: Colors.white70,
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Wrap(
                  children: [
                    Text('Project Title:       '),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: CupertinoTextField(
                        placeholder: 'enter project title ',
                        controller: _controller,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  children: [
                    Text('Description:       '),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: CupertinoTextField(
                        placeholder: 'enter project description',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  children: [
                    Text('Groups:       '),
                    DropdownButton<String>(
                      hint: FlatButton(
                          color: Colors.greenAccent,
                          onPressed: () {},
                          child: Text('See Groups assigned')),
                      items: <String>[
                        'Group 0',
                        'Group 1',
                        'Group 2',
                        'Group 3',
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      height: 25,
                      minWidth: 30,
                      onPressed: () {
                        setState(() {
                          projects.add(Project(title: _controller.text));
                        });
                        Navigator.pop(context);
                      },
                      elevation: 5,
                      color: Colors.lightGreenAccent,
                      child: Center(child: Text('Save')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      height: 25,
                      minWidth: 30,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      elevation: 5,
                      color: Colors.redAccent,
                      child: Center(child: Text('Cancel')),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
