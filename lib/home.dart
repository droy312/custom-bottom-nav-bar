import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static Size ds = Size(0.0, 0.0);

  static double x1 = 1 * (ds.width / 4) * 60;
  static double x2 = 2 * (ds.width / 4) - 83;
  static double x3 = 3 * (ds.width / 4) - 97;
  static double x4 = 4 * (ds.width / 4) - 113;

  double x = x1;

  @override
  void initState() { 
    super.initState();
    
    ds = MediaQuery.of(context).size;
  }

  Color color = Colors.blue[600];

  Widget bottomNavBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 800),
            curve: Curves.fastOutSlowIn,
            width: 80,
            height: 55,
            transform: Matrix4.translationValues(x, 0, 0),
            child: Row(
              children: <Widget>[
                AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.fastOutSlowIn,
                  width: 10,
                  height: 55,
                  color: color,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10))),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.fastOutSlowIn,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  width: 60,
                  height: 55,
                  child: Container(
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.fastOutSlowIn,
                  width: 10,
                  height: 55,
                  color: color,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      x = x1;
                      color = Colors.blue[600];
                    });
                  },
                  child: Icon(Icons.home, color: Colors.black, size: 30),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      x = x2;
                      color = Colors.red;
                    });
                  },
                  child: Icon(Icons.settings_system_daydream,
                      color: Colors.black, size: 30),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      x = x3;
                      color = Colors.green;
                    });
                  },
                  child:
                      Icon(Icons.bubble_chart, color: Colors.black, size: 30),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      x = x4;
                      color = Colors.black;
                    });
                  },
                  child: Icon(Icons.landscape, color: Colors.black, size: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ds = MediaQuery.of(context).size;

    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 800),
        curve: Curves.fastOutSlowIn,
        color: color,
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
