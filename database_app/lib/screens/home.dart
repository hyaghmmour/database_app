import 'package:database_app/screens/appbar.dart';
import 'package:database_app/screens/bottom_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav().build(null),
      body: Container(
        color: Color.fromRGBO(4, 4, 11, .9)
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
