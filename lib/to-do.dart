// ignore: unused_import
import 'dart:js';

// ignore: unused_import
import 'package:epokalearner/main.dart';
import 'package:epokalearner/newtask.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double phonewidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.amber,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red[900],
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => SingleChildScrollView(
                          child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: ToDo(),
                      )));
            }),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Text(
                  'To-Do List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ]));
  }
}
