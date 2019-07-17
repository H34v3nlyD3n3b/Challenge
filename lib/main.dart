import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0d1839),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              alignment: Alignment.topCenter,
              child: Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              width: 370,
              alignment: Alignment.centerLeft,
              child: Text(
                'Trending',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            PageView(
              children: <Widget>[
              Container(
                width: 380,
                height: 260,
                child: Stack(
                  children: <Widget>[
                    new Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 260,
                        width: 370,
                        child: Stack(
                          children: <Widget>[
                            new Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0x4D485fa9),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color(0x4D000000),
                                        offset: new Offset(0.0, 5.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 1)
                                  ],
                                ),
                                height: 180,
                                width: 350,
                              ),
                            ),
                            new Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF485fa9),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color(0x4D000000),
                                        offset: new Offset(0.0, 5.0),
                                        blurRadius: 20.0,
                                        spreadRadius: 1)
                                  ],
                                ),
                                height: 200,
                                width: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),

            Container(
                  width: 380,
                  height: 260,
                  child: Stack(
                    children: <Widget>[
                      new Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 260,
                          width: 370,
                          child: Stack(
                            children: <Widget>[
                              new Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0x4D485fa9),
                                    boxShadow: [
                                      new BoxShadow(
                                          color: Color(0x4D000000),
                                          offset: new Offset(0.0, 5.0),
                                          blurRadius: 20.0,
                                          spreadRadius: 1)
                                    ],
                                  ),
                                  height: 180,
                                  width: 350,
                                ),
                              ),
                              new Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFF485fa9),
                                    boxShadow: [
                                      new BoxShadow(
                                          color: Color(0x4D000000),
                                          offset: new Offset(0.0, 5.0),
                                          blurRadius: 20.0,
                                          spreadRadius: 1)
                                    ],
                                  ),
                                  height: 200,
                                  width: 120,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
  ],
            scrollDirection: Axis.horizontal,),
          ],
        ),
      ),
    );
  }
}
