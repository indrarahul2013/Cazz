import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'JobsListView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Job Portal',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Job Portal'),
        ),
        body: Center(
          child: JobsListView()
        ),
      ),
    );
  }
}