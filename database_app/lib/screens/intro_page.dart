import 'dart:ui';
import 'package:database_app/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.blueGrey[900],
      child: Column(children: <Widget>[
        ClipPath(
          clipper: HomeClipper(),
          child: Container(
            child: Center(
              child: Image(
                image: AssetImage('./assets/desk.png'),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.all(5),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0.8, 0.0),
                  colors: [Colors.purpleAccent[700], Colors.purpleAccent],
                )),
          ),
        ),
        Column(
          children: [
            Container(
              width: 275,
              margin: EdgeInsets.only(top: 25),
              child: Text('Organize it all with Estaro',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          decoration: TextDecoration.none))),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 30),
              width: 200,
              child: Text(
                'A task manager you can trust for life',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        decoration: TextDecoration.none)),
              ),
            ),
            Container(
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purpleAccent[700],
                          Colors.purpleAccent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 0.0),
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("Get Started",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.none))),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;
    var path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(0, size.height, 10, size.height);
    path.lineTo(size.width, size.height - roundnessFactor);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
