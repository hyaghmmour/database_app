import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color.fromRGBO(4, 4, 11, .9),
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.white,), title: Text("Add Item"),),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.white,), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white,), title: Text("Add Item")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, color: Colors.white,), title: Text("Add Item")),
        ]);
  }
}
