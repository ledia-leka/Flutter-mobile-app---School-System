import 'package:flutter/material.dart';

void main() {runApp(MyApp());}

class MyApp extends StatefulWidget {
  @override
  Attendance createState() => Attendance();
}

class Attendance extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('ATTENDANCE'),
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
                    'Week ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Attended(hrs)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Week 1')),
                  DataCell(Text('2/2')),
                  
                ]),
                DataRow(cells: [
                  DataCell(Text('Week 2')),
                  DataCell(Text('2/2')),
                 
                ]),
                DataRow(cells: [
                  DataCell(Text('Week 3')),
                  DataCell(Text('0/2')),
                  
                ]),
                DataRow(cells: [
                  DataCell(Text('Week 4')),
                  DataCell(Text('1/2')),
                  
                ]),
              ],
            ),
            
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Center(
                child: Text(
                  'CEN 302',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purple),
                )),
            DataTable(
              columns: [
                DataColumn(label: Text(
                    'Week ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Attended(hrs)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Week 1')),
                  DataCell(Text('1/2')),
                  
                ]),
                DataRow(cells: [
                  DataCell(Text('Week 2')),
                  DataCell(Text('2/2')),
                 
                ]),
                DataRow(cells: [
                  DataCell(Text('Week 3')),
                  DataCell(Text('2/2')),
                  
                ]),
                DataRow(cells: [
                  DataCell(Text('Week 4')),
                  DataCell(Text('2/2')),
                  
                ]),
              ],
            ),

            
          ])
      ),
    );
  }
}
