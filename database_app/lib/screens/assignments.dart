import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './progress_donut.dart';

class Assignment extends StatefulWidget {
  String taskName, subtask;
  dynamic dueDate; 

  Assignment(this.taskName);
  @override
  _AssignmentState createState() => _AssignmentState(this.taskName);
}

class _AssignmentState extends State<Assignment> {
  String task, subtask;
  dynamic dueDate;

  _AssignmentState(this.task);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Progress(100),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Column(
              children: [
                Text(
                  this.task,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "this.task",
                  style: GoogleFonts.lato(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Column(
              children: [
                Text(
                  "this.task",
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
