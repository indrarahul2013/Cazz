import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final String name, dept, year;

  UserDetails({this.name, this.dept, this.year});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        Text(
          dept,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.white),
        ),
        Text(
          year,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.white),
        ),
      ],
    );
  }
}
