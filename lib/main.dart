// ignore: avoid_web_libraries_in_flutter
import 'dart:ui';
// ignore: unused_import
import 'package:epokalearner/home.dart';
import 'package:epokalearner/profile.dart';
import 'package:epokalearner/to-do.dart';
import 'package:flutter/material.dart';
import 'package:epokalearner/to-do.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*     theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF212121),
        accentColor: Colors.white,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
      ),
*/
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.white,
        brightness: Brightness.light,
        backgroundColor: const Color(0xFFE5E5E5),
        accentColor: Colors.black,
        accentIconTheme: IconThemeData(color: Colors.white),
        dividerColor: Colors.white54,
      ),
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
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = [];
  Widget page1 = Home();
  Widget page2 = TasksScreen();
  @override
  void initState() {
    super.initState();

    _widgetOptions = [page1, page2];
  }

  @override
  Widget build(BuildContext context) {
    final double phonewidth = MediaQuery.of(context).size.width / 4;
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
            currentAccountPicture:
                Icon(Icons.person_pin, size: 40, color: Colors.blueGrey),
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.file_copy_outlined),
            title: Text('Courses'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.sticky_note_2),
            title: Text('Interim/Grades'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.check_box_outlined),
            title: Text('Attendance'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('Documents'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.attach_money_outlined),
            title: Text('Finance'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_rounded),
            title: Text('Timetable'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.emoji_transportation),
            title: Text('Transport'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_sharp),
            label: 'ToDo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_sharp),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
      /* Row(
          children: <Widget>[
            buildNavBar(Icons.home_rounded, 0),
            buildNavBar(Icons.favorite_sharp, 1),
            buildNavBar(Icons.format_list_bulleted_sharp, 2),
            buildNavBar(Icons.settings, 3),
          ],
        )); */
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

/*
  Widget buildNavBar(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TasksScreen()),
        );
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
        child: Icon(icon,
            color: index == _selectedItem ? Colors.red : Colors.grey[350]),
      ),
    );
  }*/
}
