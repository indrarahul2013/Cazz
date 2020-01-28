import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
            Column(
              children: <Widget>[
                  Row(
                  children: <Widget>[
                      profileImage('assets/pic.jpeg'),
                      userDetails('Rahul Indra', 'Computer Science \nand Technology', '4th Year'),
                    ],
                  ),
                  Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(30,10,10,10)),
                    CGPA(cgpa: '8.62',),
                    Padding(padding: EdgeInsets.fromLTRB(40,10,10,10)),
                    semAvg(80),
                    Padding(padding: EdgeInsets.fromLTRB(30,10,10,10)),
                    popularity(1242)  
                    ],
                  )    
                ]
              ),
          Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 300.0,
                child: 
          Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width
                    )
                    ),
                    Positioned(
                      top: 320,
                      left: 20,
                      child: 
                      Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width-30,
                          child:
                          ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                                classes('04:00-04:30PM', 501, 'CS4512 - Theory of Computation'),
                                classes('04:40-05:20PM', 402, 'CS9215 - Operating Systems'),
                                ],
                            ),
                          ),                                          
                      ),                    
          ]
        ),
      ],
    ),
      
      bottomNavigationBar : BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          btmnvgbar('Home', AntDesign.home),
          btmnvgbar('Inbox', AntDesign.message1),
          btmnvgbar('Notifications', AntDesign.bells),
          btmnvgbar('Profile', AntDesign.idcard),            
        ],
        selectedItemColor: Color(0xFF3B2ED8),
      ),
    );
  }
}

Container classes(classTime,roomNumber,className){
  return Container(
                margin: EdgeInsets.only(right: 10),
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 1.0
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child:
                    Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.fromLTRB(10,20,10,10),),
                            Icon(AntDesign.clockcircle,color: Colors.grey,size:13),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            Text(classTime,style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Lato',
                              ),),
                            Padding(padding: EdgeInsets.only(right: 10),),
                            Icon(Ionicons.ios_navigate,color: Colors.grey, size: 15,),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            Text('ROOM ' + roomNumber.toString(),style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Lato',
                              ),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                          className,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                            
                          ),
                        ),),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(children: <Widget>[
                          Icon(FontAwesome.circle,color: Colors.grey,size: 15,),
                          SizedBox(width: 10,),
                          Text(
                            'UPCOMING CLASS',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600
                              ),
                            ),
                            ],
                          ),
                          )
                        ],
                      )

            );
}

BottomNavigationBarItem btmnvgbar(name,icon){
  return BottomNavigationBarItem(
            icon: Icon(icon),
            title: Text(name,style: 
            TextStyle(
              fontWeight: FontWeight.w300,
              fontFamily: 'Lato',
              ),
              ),
          );
}

Container profileImage(imgPath){
  return Container(
              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                            image: AssetImage(imgPath),
                            fit: BoxFit.cover)),
              margin: EdgeInsets.fromLTRB(40,20,30,20),
              height: 150.0,
              width: 150.0);
}

Column userDetails(name,dept,year){
 return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                        
                    Text(name,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    
                    Text(dept,
                      style:  TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        color: Colors.white
                      ),
                    ),

                    Text(year,
                      style:  TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                      ),
                    ),
                        
                ],
          ); 
}

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
                SizedBox(width: 10,),
                
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[  
                    
                    Text(cgpa.toString(),
                    style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),

                    const Text('CGPA',
                    style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.white
                  ),),
              ],),

          ],);
}
}

Column semAvg(semavg){
  return Column(children: <Widget>[
                  
                  CircularPercentIndicator(
                  progressColor: Colors.greenAccent,
                  percent: (semavg/100),
                  animation: true,
                  radius: 70.0,
                  lineWidth: 3.0,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(semavg.toString()+"%", style: 
                        TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                        )   
                    ),
                  ),

                  Text('Sem Avg%',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: Colors.white
                    ),
                  ),
            ],
    );
}

Row popularity(poplr){
  return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Icon(
                    FontAwesome.heart,
                    color: Colors.white,
                    ),
                  SizedBox(width: 10,),
                  
                  Text(poplr.toString(),
                  style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                    ),
                  ),
          ],
  );                  
}