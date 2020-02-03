import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SemAvg extends StatelessWidget {
  final double semavg;

  SemAvg({this.semavg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircularPercentIndicator(
          progressColor: Colors.greenAccent,
          percent: (semavg / 100),
          animation: true,
          radius: 70.0,
          lineWidth: 3.0,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(semavg.toString() + "%",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
              )),
        ),
        Text(
          'Sem Avg%',
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
