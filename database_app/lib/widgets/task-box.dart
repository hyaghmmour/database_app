import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task extends StatefulWidget {
  String title, subtitle;
  double percent;
  List<Image> images;
  Task(@required this.title, this.subtitle, this.percent, {this.images});
  @override
  _TaskState createState() =>
      _TaskState(this.title, this.subtitle, this.percent);
}

class _TaskState extends State<Task> {
  String title, subtitle;
  double percent;
  List<Image> images;
  _TaskState(this.title, this.subtitle, this.percent, {this.images});
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width * .7,
        height: MediaQuery.of(context).size.height * .25,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(3.0, 5.0),
                  blurRadius: 3.0)
            ]),
      ),
      GestureDetector(
        onTap: () => {print("Clicked")},
        child: Container(
          width: MediaQuery.of(context).size.width * .68,
          height: MediaQuery.of(context).size.height * .25,
          margin: EdgeInsets.only(
            bottom: 7,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35, left: 35, bottom: 10),
                child: Text(this.title,
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35),
                child: Text(this.subtitle,
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 35),
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 17,
                          child:
                              Image(image: AssetImage('./assets/airplane.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: CircleAvatar(
                            backgroundColor: Colors.pink[100],
                            radius: 17,
                            child: Image(
                                image: AssetImage('./assets/business.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 17,
                            child: Image(
                              image: AssetImage('./assets/happy.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50, left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Progress",
                          style: GoogleFonts.lato(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: 5,
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  this.percent /
                                  5,
                              height: 5,
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Color.fromRGBO(3, 137, 255, .9),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(3.0, 5.0),
                    blurRadius: 6.0)
              ]),
        ),
      ),
    ]);
  }
}
