import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Progress extends StatefulWidget {
  int percent;

  Progress(this.percent);
  @override
  _ProgressState createState() => _ProgressState(this.percent);
}

class _ProgressState extends State<Progress> {
  int percent;

  _ProgressState(this.percent);
  @override
  Widget build(BuildContext context) {
    if (this.percent == 100) {
      return CircleAvatar(
        backgroundColor: Colors.greenAccent[400],
        radius: 25,
        child: Icon(
          Icons.check,
          color: Colors.green[900],
          size: 30,
        ),
      );
    } else if (this.percent < 100 && this.percent > 60) {
      return CircularPercentIndicator(
        radius: 50,
        arcType: ArcType.FULL,
        arcBackgroundColor: Colors.grey,
        animateFromLastPercent: true,
        lineWidth: 3,
        center: Text(
          this.percent.toString() + "%", 
          style: GoogleFonts.lato(color: Colors.white, )
        ),
        fillColor: Colors.transparent,
        percent: this.percent/100, 
        linearGradient: LinearGradient(
          begin: Alignment.topLeft, 
          end: Alignment(0.8, 0.0),
          colors: [
            Colors.purple, 
            Colors.blue
          ]
        ),
      );
    } else if (this.percent < 60 && this.percent > 30) {
      return CircularProgressIndicator();
    } else {
      return CircularProgressIndicator();
    }
  }
}
