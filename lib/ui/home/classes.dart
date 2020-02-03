import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Classes extends StatelessWidget {
  final String classTime;
  final int roomNumber;
  final String className;
  final String profName;

  Classes({this.classTime, this.roomNumber, this.className, this.profName});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        width: 250,
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey, style: BorderStyle.solid, width: 1.0),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                ),
                Icon(AntDesign.clockcircle, color: Colors.grey, size: 13),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  classTime,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                ),
                Icon(
                  Ionicons.ios_navigate,
                  color: Colors.grey,
                  size: 15,
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  'ROOM ' + roomNumber.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Lato',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                className,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                profName,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesome.circle,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'UPCOMING CLASS',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
