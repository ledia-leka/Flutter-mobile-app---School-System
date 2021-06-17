import 'package:flutter/material.dart';

class Timetable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('TIMETABLE'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'COMPUTER ENGINEERING III',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[700]),
            )),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('Time ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('MON ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('TUE ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('WED',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('THU',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('FRI ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('SAT',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('8:45-9:30')),
                  DataCell(Text('ECE336 DSP C.Cuilla A131')),
                  DataCell(Text('')),
                  DataCell(Text('CEN302 SE I.Hakrama CL I')),
                  DataCell(Text('')),
                  DataCell(Text('CEN302 SE I.Hakrama E012')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('9:45-10:30')),
                  DataCell(Text('ECE336 DSP C.Cuilla A131')),
                  DataCell(Text('')),
                  DataCell(Text('CEN302 SE I.Hakrama CL I')),
                  DataCell(Text('')),
                  DataCell(Text('CEN302 SE I.Hakrama E012')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10:45-11:30')),
                  DataCell(Text('ECE336 DSP C.Cuilla A131')),
                  DataCell(Text('CEN308 OS E.Bedalli A130')),
                  DataCell(Text('CEN302 SE I.Hakrama CL I')),
                  DataCell(Text('ECE312 ItB A.Halili A130')),
                  DataCell(Text('CEN302 SE I.Hakrama E012')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('11:45-12:30')),
                  DataCell(Text('')),
                  DataCell(Text('CEN308 OS E.Bedalli A130')),
                  DataCell(Text('CEN308 OS E.Bedalli A005')),
                  DataCell(Text('ECE312 ItB A.Halili A130')),
                  DataCell(Text('CEN302 SE I.Hakrama E012')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('12:45-13:30')),
                  DataCell(Text('')),
                  DataCell(Text('CEN308 OS E.Bedalli A130')),
                  DataCell(Text('CEN308 OS E.Bedalli A005')),
                  DataCell(Text('ECE312 ItB A.Halili A130')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('13:45-14:30')),
                  DataCell(Text('CEN380 ML Xh.Polisi E110')),
                  DataCell(Text('')),
                  DataCell(Text('CEN308 OS E.Bedalli A127')),
                  DataCell(Text('ECE312 ItB A.Halili A130')),
                  DataCell(Text('CEN330 PP E.Bedalli A005')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('14:45-15:30')),
                  DataCell(Text('CEN380 ML Xh.Polisi E110')),
                  DataCell(Text('CEN330 PP E.Bedalli A126')),
                  DataCell(Text('CEN308 OS E.Bedalli A127')),
                  DataCell(Text('CEN380 ML Xh.Polis E320MR')),
                  DataCell(Text('CEN330 PP E.Bedalli A005')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('15:45-16:30')),
                  DataCell(Text('')),
                  DataCell(Text('CEN330 PP E.Bedalli A126')),
                  DataCell(Text('')),
                  DataCell(Text('CEN380 ML Xh.Polis E320MR')),
                  DataCell(Text('E 110')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('16:45-17:30')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('CEN390 GP')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('17:45-18:30')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('CEN351 PP E.Mancellari')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('18:45-19:30')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('19:45-20:30')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
              ],
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
          ])),
    );
  }
}


