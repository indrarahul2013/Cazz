import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'ui/home/bottomNavigationBar.dart';
import 'ui/home/cgpa.dart';
import 'ui/home/classes.dart';
import 'ui/home/profileImage.dart';
import 'ui/home/userDetails.dart';
import 'ui/home/semAvg.dart';
import 'ui/home/popularity.dart';

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
      backgroundColor: Color(0xFF3B2ED8),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Stack(children: [
            Column(children: <Widget>[
              Row(
                children: <Widget>[
                  ProfileImage(imgPath: 'assets/pic.jpeg'),
                  UserDetails(
                      name: 'Rahul Indra',
                      dept: 'Computer Science \nand Technology',
                      year: '4th Year'),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(30, 10, 10, 10)),
                  CGPA(
                    cgpa: '8.62',
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(40, 10, 10, 10)),
                  SemAvg(semavg: 80),
                  Padding(padding: EdgeInsets.fromLTRB(30, 10, 10, 10)),
                  Popularity(poplr: 1242)
                ],
              )
            ]),
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 300.0,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
              top: 320,
              left: 20,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width - 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Classes(
                        classTime: '04:00-04:30PM',
                        roomNumber: 501,
                        className: 'CS4512 - Theory of Computation'),
                    Classes(
                        classTime: '04:40-05:20PM',
                        roomNumber: 402,
                        className: 'CS9215 - Operating Systems'),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          btmnvgbar(name: 'Home', icon: AntDesign.home),
          btmnvgbar(name: 'Inbox', icon: AntDesign.message1),
          btmnvgbar(name: 'Notifications', icon: AntDesign.bells),
          btmnvgbar(name: 'Profile', icon: AntDesign.idcard),
        ],
        selectedItemColor: Color(0xFF3B2ED8),
      ),
    );
  }
}
