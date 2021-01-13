import 'package:database_app/screens/appbar.dart';
import 'package:database_app/screens/home.dart';
import 'package:database_app/screens/intro_page.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage());
  }
}
