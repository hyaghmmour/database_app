import 'package:database_app/screens/appbar.dart';
import 'package:database_app/screens/assignments.dart';
import 'package:database_app/screens/bottom_nav.dart';
import 'package:database_app/widgets/task-box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tomorrow = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav().build(null),
      body: Container(
        color: Color.fromRGBO(4, 4, 11, 0.9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25),
              child: Text("Recent Projects",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.lato(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .33,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 20, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Task("Task 1", "Task 1 Subtitle", 0.65),
                    Task("Task 2", "Task 2 Subtitle", 0.22),
                    Task("Task 3", "Task 3 Subtitle", 0.8),
                  ],
                )),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .4,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ListView(
                children: [
                  new Assignment(
                    "Create Unity",
                  ), 
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
