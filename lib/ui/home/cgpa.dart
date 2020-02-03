import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CGPA extends StatelessWidget {
  final String cgpa;
  CGPA({this.cgpa});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Icon(
          FontAwesome.graduation_cap,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              cgpa.toString(),
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              'CGPA',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
