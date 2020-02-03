import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Popularity extends StatelessWidget {
  final int poplr;

  Popularity({this.poplr});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          FontAwesome.heart,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          poplr.toString(),
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ],
    );
  }
}
