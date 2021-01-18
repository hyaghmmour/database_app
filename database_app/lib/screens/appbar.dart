import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(4, 4, 11, .9),
      elevation: 0,
      leading: IconButton(
        onPressed: () => {},
        icon: Icon(
          Icons.menu_rounded,
          size: 30,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () => {},
            ),
          ],
        )
      ],
    );
  }
}
