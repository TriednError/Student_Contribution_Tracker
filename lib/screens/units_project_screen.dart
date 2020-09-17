import 'dart:html';
import 'dart:math';

import 'package:Student_Contribution_Tracker/Model/groups.dart';
import 'package:Student_Contribution_Tracker/components/group.dart';
import 'package:Student_Contribution_Tracker/components/group_dialog.dart';
import 'package:Student_Contribution_Tracker/components/project.dart';
import 'package:Student_Contribution_Tracker/components/project_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Student_Contribution_Tracker/Model/projects.dart';
import 'package:provider/provider.dart';

class UnitsProjectScreen extends StatefulWidget {
  static const String id = 'units_project_screen';

  @override
  _UnitsProjectScreenState createState() => _UnitsProjectScreenState();
}

class _UnitsProjectScreenState extends State<UnitsProjectScreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();

  String _value = 'Members';

  var members = [
    'Alex',
    'Astitva',
    'Min',
    'Shi',
  ];

  Color whichColor() {
    switch (_controller3.text) {
      case 'red':
        return Colors.red;

      case 'blue':
        return Colors.blue;

      case 'green':
        return Colors.green;

      case 'orange':
        return Colors.orange;

      case 'purpule':
        return Colors.purple;

      case 'amber':
        return Colors.amber;

      case 'yellow':
        return Colors.yellow;

      case 'teal':
        return Colors.teal;
      case 'indigo':
        return Colors.indigo;
      case 'pink':
        return Colors.pink;

      case 'cyan':
        return Colors.cyan;

        break;
      default:
        return Colors.black;
    }
  }

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
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Projects',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xff133b5c)),
                            ),
                            Tooltip(
                              message: 'Add Project/Assignment',
                              child: MaterialButton(
                                onPressed: () {
                                  return showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          child: Container(
                                            color: Colors.white70,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.7,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Wrap(
                                                      children: [
                                                        Text(
                                                            'Project Title:       '),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          child:
                                                              CupertinoTextField(
                                                            placeholder:
                                                                'enter project title ',
                                                            controller:
                                                                _controller1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Wrap(
                                                      children: [
                                                        Text(
                                                            'Description:       '),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          child:
                                                              CupertinoTextField(
                                                            placeholder:
                                                                'enter project description',
                                                            controller:
                                                                _controller4,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Wrap(
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      children: [
                                                        Text('Groups:       '),
                                                        DropdownButtonHideUnderline(
                                                          child: DropdownButton<
                                                              String>(
                                                            hint: FlatButton(
                                                                color: Colors
                                                                    .greenAccent,
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                    'See Groups assigned')),
                                                            items: <String>[
                                                              'Group 0',
                                                              'Group 1',
                                                              'Group 2',
                                                              'Group 3',
                                                            ].map(
                                                                (String value) {
                                                              return new DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child: new Text(
                                                                    value),
                                                              );
                                                            }).toList(),
                                                            onChanged: (_) {},
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Wrap(
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                            'Work Categories:      '),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          child:
                                                              CupertinoTextField(
                                                            placeholder:
                                                                'enter work category eg: Coding, Report etc.. ',
                                                            controller:
                                                                _controller5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Wrap(
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                            'Color Label:      '),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          child:
                                                              CupertinoTextField(
                                                            placeholder:
                                                                'enter color eg: red, yellow etc',
                                                            controller:
                                                                _controller3,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        MaterialButton(
                                                          height: 25,
                                                          minWidth: 30,
                                                          onPressed: () {
                                                            setState(() {
                                                              projects
                                                                  .add(Project(
                                                                title:
                                                                    _controller1
                                                                        .text,
                                                                colorLabel:
                                                                    whichColor(),
                                                                description:
                                                                    _controller4
                                                                        .text,
                                                                workCategory:
                                                                    _controller5
                                                                        .text,
                                                              ));
                                                            });
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          elevation: 5,
                                                          color: Colors
                                                              .lightGreenAccent,
                                                          child: Center(
                                                              child:
                                                                  Text('Save')),
                                                        ),
                                                        SizedBox(
                                                          width: 20,
                                                        ),
                                                        MaterialButton(
                                                          height: 25,
                                                          minWidth: 30,
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          elevation: 5,
                                                          color:
                                                              Colors.redAccent,
                                                          child: Center(
                                                              child: Text(
                                                                  'Cancel')),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                color: Colors.white70,
                                height: 20,
                                minWidth: 60,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: ListView.builder(
                                itemCount: projects.length,
                                itemBuilder: (context, index) {
                                  return Project(
                                    onPressed: () {},
                                    title: projects[index].title,
                                    colorLabel: projects[index].colorLabel,
                                    description: projects[index].description,
                                    workCategory: projects[index].workCategory,
                                  );
                                },
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Groups',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xff133b5c)),
                            ),
                            Tooltip(
                              message: 'Add Group',
                              child: MaterialButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          child: Container(
                                            color: Colors.white70,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Wrap(
                                                      children: [
                                                        Text(
                                                            'Group Name:       '),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          child:
                                                              CupertinoTextField(
                                                            placeholder:
                                                                'enter group name ',
                                                            controller:
                                                                _controller2,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Wrap(
                                                      children: [
                                                        Text(
                                                            'Description:       '),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          child:
                                                              CupertinoTextField(
                                                            placeholder:
                                                                'enter group description',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Wrap(
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      children: [
                                                        DropdownButtonHideUnderline(
                                                          child: DropdownButton<
                                                              String>(
                                                            hint: FlatButton(
                                                                color: Colors
                                                                    .greenAccent,
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                    _value)),
                                                            items: members.map(
                                                                (String value) {
                                                              return new DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child: new Text(
                                                                    value),
                                                              );
                                                            }).toList(),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                value = _value;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 40,
                                                        ),
                                                        Container(
                                                          width: 200,
                                                          child:
                                                              CupertinoTextField(
                                                            placeholder:
                                                                'Search student..',
                                                            controller:
                                                                _controller6,
                                                          ),
                                                        ),
                                                        Tooltip(
                                                          message:
                                                              'add student',
                                                          child: IconButton(
                                                              icon: Icon(
                                                                  Icons.add),
                                                              onPressed: () {
                                                                setState(() {
                                                                  members.add(
                                                                      _controller6
                                                                          .text);

                                                                  _controller6
                                                                      .text = '';
                                                                });
                                                              }),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        MaterialButton(
                                                          height: 25,
                                                          minWidth: 30,
                                                          onPressed: () {
                                                            setState(() {
                                                              groups.add(Group(
                                                                  name: _controller2
                                                                      .text));
                                                            });

                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          elevation: 5,
                                                          color: Colors
                                                              .lightGreenAccent,
                                                          child: Center(
                                                              child:
                                                                  Text('Save')),
                                                        ),
                                                        SizedBox(
                                                          width: 20,
                                                        ),
                                                        MaterialButton(
                                                          height: 25,
                                                          minWidth: 30,
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          elevation: 5,
                                                          color:
                                                              Colors.redAccent,
                                                          child: Center(
                                                              child: Text(
                                                                  'Cancel')),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                        ;
                                      });
                                },
                                color: Colors.white70,
                                height: 20,
                                minWidth: 60,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: ListView.builder(
                                itemCount: groups.length,
                                itemBuilder: (context, index) {
                                  return Group(
                                      onPressed: () {},
                                      name: groups[index].name);
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
