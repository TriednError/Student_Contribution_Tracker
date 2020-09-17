import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupDialog extends StatefulWidget {
  @override
  _GroupDialogState createState() => _GroupDialogState();
}

class _GroupDialogState extends State<GroupDialog> {
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
                    Text('Group Name:       '),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: CupertinoTextField(
                        placeholder: 'enter group name ',
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
                        placeholder: 'enter group description',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    DropdownButton<String>(
                      hint: FlatButton(
                          color: Colors.greenAccent,
                          onPressed: () {},
                          child: Text('Members')),
                      items: <String>[
                        'Alex',
                        'Astitva',
                        'Min',
                        'Shi',
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 200,
                      child: CupertinoTextField(
                        placeholder: 'Search student..',
                      ),
                    ),
                    Tooltip(
                      message: 'add student',
                      child:
                          IconButton(icon: Icon(Icons.add), onPressed: () {}),
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
                      onPressed: () {},
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
