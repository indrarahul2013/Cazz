import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String imgPath;

  ProfileImage({this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
        margin: EdgeInsets.fromLTRB(40, 20, 30, 20),
        height: 150.0,
        width: 150.0);
  }
}
