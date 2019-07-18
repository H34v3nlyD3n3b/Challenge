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
              height: 750,
              child: ListView(
                children: <Widget>[
                 Explore(),
                 Gap1(),
                  Trending(),
                  Gap2(),
                  HCards(),
                  Latests(),
                  Gap3(),
                  VCards(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Explore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      child: Text(
        'Explore',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    ) ;
  }
}
class Gap1 extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
    );
  }
}
class Trending extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      alignment: Alignment.centerLeft,
      child: Text(
        'Trending',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
class Gap2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 10,
    );
  }
}
class HCards extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 270,
      child: PageView(
        controller: PageController(viewportFraction: 0.9),
        children: <Widget>[
          TCards(),
          TCards(),
          TCards(),
        ],
      ),
    );
  }
}
class Latests extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          'Latests',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
class Gap3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(height: 10);
  }
}
class VCards extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 320,
      child: PageView(
        controller: PageController(viewportFraction: 0.9),
        children: <Widget>[
          LCards(),
          LCards(),
          LCards(),
          LCards(),
          LCards(),
        ],
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

class TCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 260,
      child: Stack(
        children: <Widget>[
          new Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 260,
              width: 360,
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
    );
  }
}

class LCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 370,
      child: Stack(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                new Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF485fa9),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        new BoxShadow(
                            color: Color(0x4D000000),
                            offset: new Offset(0.0, 5.0),
                            blurRadius: 20.0,
                            spreadRadius: 1),
                      ],
                    ),
                    height: 200,
                    width: 370,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
          ),
        ],
      ),
    );
  }
}
