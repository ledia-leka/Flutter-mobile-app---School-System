// ignore: avoid_web_libraries_in_flutter
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF212121),
        accentColor: Colors.white,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
      ),
/*
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.white,
        brightness: Brightness.light,
        backgroundColor: const Color(0xFFE5E5E5),
        accentColor: Colors.black,
        accentIconTheme: IconThemeData(color: Colors.white),
        dividerColor: Colors.white54,
      ),*/
      title: 'Epoka Feed',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            centerTitle: true,
            shadowColor: Color.fromRGBO(255, 176, 50, 100),
            title: new Text(
              "Epoka e-Learner",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Color.fromRGBO(66, 135, 245, 100)),
        drawer: new Drawer(
            child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.person_pin, size: 40, color: Colors.blueGrey),
              accountName: new Text(
                'Name',
                style: TextStyle(color: Colors.grey[700], fontSize: 25),
              ),
              accountEmail: new Text(
                'Email@epoka.edu.al',
                style: TextStyle(color: Colors.grey[700], fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Profile'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.file_copy_outlined),
              title: Text('Courses'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.sticky_note_2),
              title: Text('Interim/Grades'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.check_box_outlined),
              title: Text('Attendance'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.file_present),
              title: Text('Documents'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money_outlined),
              title: Text('Finance'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today_rounded),
              title: Text('Timetable'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.emoji_transportation),
              title: Text('Transport'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {
                Navigator.of(context).pop()
              },
            ),
          ],
        )),
        body: Column(
          children: [
            Container(
              color: Colors.grey[800],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage('assets\images\mm.jpg'),
                fit: BoxFit.fill,
              )),
            ),
            Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 3,
                    primary: false,
                    children: <Widget>[
                      FlatButton(
                          onPressed: () {},
                          child: Column(children: <Widget>[
                            Icon(Icons.person, size: 70, color: Colors.blue[300]),
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
                            Icon(Icons.file_copy_outlined, size: 70, color: Colors.yellow[600]),
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
                          onPressed: () {},
                          child: Column(children: <Widget>[
                            Padding(padding: EdgeInsets.all(5)),
                            Icon(Icons.sticky_note_2, size: 70, color: Colors.green),
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
                          onPressed: () {},
                          child: Column(children: <Widget>[
                            Padding(padding: EdgeInsets.all(5)),
                            Icon(Icons.check_box_outlined, size: 70, color: Colors.purple),
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
                            Icon(Icons.file_present, size: 70, color: Colors.red),
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
                            Icon(Icons.attach_money_rounded, size: 70, color: Colors.blue[300]),
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
                            Icon(Icons.add_circle_outline, size: 70, color: Colors.amber[700]),
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
        bottomNavigationBar: Row(
          children: <Widget>[
            buildNavBar(Icons.home_rounded, 0),
            buildNavBar(Icons.favorite_sharp, 1),
            buildNavBar(Icons.format_list_bulleted_sharp, 2),
            buildNavBar(Icons.settings, 3),
          ],
        ));
  }

  Widget buildNavBar(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItem = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 4,
        decoration: index == _selectedItem
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 4, color: Colors.red),
                ),

                //  color: index == _selectedItem ? Colors.red : Colors.white70);
              )
            : BoxDecoration(),
        child: Icon(icon, color: index == _selectedItem ? Colors.red : Colors.grey[350]),
      ),
    );
  }
}
