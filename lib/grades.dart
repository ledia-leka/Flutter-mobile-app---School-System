import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatefulWidget {
  @override
  Grades createState() => Grades();
}

class Grades extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('GRADES'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
                  'CEN 302',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purple),
                )),
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Weight',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Grade',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Midterm Exam')),
                  DataCell(Text('30%')),
                  DataCell(Text('70/100')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Homework')),
                  DataCell(Text('10%')),
                  DataCell(Text('100/100')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Project')),
                  DataCell(Text('20%')),
                  DataCell(Text('90/100')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Final Exam')),
                  DataCell(Text('40%')),
                  DataCell(Text('75/100')),
                ]),
              ],
            ),
            
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),

            Center(
                child: Text(
                  'CEN 344',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.purple),
                )),
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Weight',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Grade',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Midterm Exam')),
                  DataCell(Text('35%')),
                  DataCell(Text('80/100')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Homework')),
                  DataCell(Text('5%')),
                  DataCell(Text('90/100')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Project')),
                  DataCell(Text('15%')),
                  DataCell(Text('100/100')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Final Exam')),
                  DataCell(Text('45%')),
                  DataCell(Text('90/100')),
                ]),
              ],
            ),
          ])
      ),
    );
  }
}
