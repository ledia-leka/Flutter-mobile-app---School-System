import 'package:epokalearner/attendance.dart';
import 'package:epokalearner/grades.dart';
import 'package:epokalearner/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.grey[800],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: new BoxDecoration(
                image: new DecorationImage(
              image: new AssetImage('assets/images/logo.png'),
              fit: BoxFit.fill,
            )),
          ),
          Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: GridView.count(
                      crossAxisCount: 3,
                      primary: false,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              );
                            },
                            child: Column(children: <Widget>[
                              Icon(Icons.person,
                                  size: 70, color: Colors.blue[300]),
                              Text(
                                "Profile",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                        FlatButton(
                            onPressed: () {},
                            child: Column(children: <Widget>[
                              Padding(padding: EdgeInsets.all(5)),
                              Icon(Icons.file_copy_outlined,
                                  size: 70, color: Colors.yellow[600]),
                              Text(
                                "Courses",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Grades(),
                                ),
                              );
                            },
                            child: Column(children: <Widget>[
                              Padding(padding: EdgeInsets.all(5)),
                              Icon(Icons.sticky_note_2,
                                  size: 70, color: Colors.green),
                              Text(
                                "Interim",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Attendance(),
                                ),
                              );
                            },
                            child: Column(children: <Widget>[
                              Padding(padding: EdgeInsets.all(5)),
                              Icon(Icons.check_box_outlined,
                                  size: 70, color: Colors.purple),
                              Text(
                                "Attendance",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                        FlatButton(
                            onPressed: () {},
                            child: Column(children: <Widget>[
                              Padding(padding: EdgeInsets.all(5)),
                              Icon(Icons.file_present,
                                  size: 70, color: Colors.red),
                              Text(
                                "Documents",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                        FlatButton(
                            onPressed: () {},
                            child: Column(children: <Widget>[
                              Padding(padding: EdgeInsets.all(5)),
                              Icon(Icons.attach_money_rounded,
                                  size: 70, color: Colors.blue[300]),
                              Text(
                                "Finance",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])),
                        FlatButton(
                            onPressed: () {},
                            child: Column(children: <Widget>[
                              Padding(padding: EdgeInsets.all(5)),
                              Icon(Icons.add_circle_outline,
                                  size: 70, color: Colors.amber[700]),
                              Text(
                                "Add shortcut",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]))
                      ],
                    ))
                  ])),
        ],
      ),
    );
  }
}

