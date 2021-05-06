import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile',
          style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja-favicon.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name Surname',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Nos Qirjako',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Epoka ID Number',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '8',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Gender',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,),
            ),
            SizedBox(height: 10.0),
            Text(
              'Male',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Birthday',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '8/5/1999',
              style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                    color: Colors.blue

                ),
                SizedBox(width: 10.0,),
                Text(
                  'Nosqirjako@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    letterSpacing: 1.0,

                  ),
                ),

                SizedBox(height: 30.0,),

              ],
            )

          ],
        ),
      ),
    );
  }}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



