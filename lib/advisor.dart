import 'package:flutter/material.dart';

class Advisor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Approve courses',
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber,
            elevation: 0.0,
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'Course title - Course Code',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            )),
            DataTable(columnSpacing: 30, columns: [
              DataColumn(
                  label: Text('St.Id',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Name',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('No.St',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Approval',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold)))
            ], rows: [
              DataRow(cells: [
                DataCell(Text('A125F652')),
                DataCell(Text('Student Full name')),
                DataCell(Text('21')),
                DataCell(
                  RaisedButton(
                      onPressed: () {
                        color:
                        Colors.green;
                      },
                      color: Colors.red,
                      hoverColor: Colors.amber,
                      child: Text('Approve',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))),
                )
              ]),
            ])
          ])),
    );
  }
}
