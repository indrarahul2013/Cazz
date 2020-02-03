import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Attendance',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat',
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          makeAttendance('CS4512 - Theory of Computation', 10, 2),
          makeAttendance('CS4512 - Theory of Computation', 6, 2),
          makeAttendance('CS4512 - Theory of Computation', 5, 4),
        ],
      ),
    );
  }
}

Container makeAttendance(className, total, attnd) {
  var percnt = attnd / total;
  return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
      child: Row(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                      image: AssetImage('assets/pic.jpeg'), fit: BoxFit.cover)),
              height: 70.0,
              width: 70.0),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                className,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Total Periods - $total',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                'Attended - $attnd',
                style: TextStyle(
                    color: percnt > 0.75 ? Colors.grey : Colors.red,
                    fontFamily: 'Lato',
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          CircularPercentIndicator(
            progressColor:
                percnt > 0.75 ? Colors.greenAccent : Colors.redAccent,
            percent: attnd / total,
            animation: true,
            radius: 50.0,
            lineWidth: 1.0,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text((percnt * 100).toStringAsFixed(1) + "%",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Lato',
                )),
          ),
        ],
      ));
}
