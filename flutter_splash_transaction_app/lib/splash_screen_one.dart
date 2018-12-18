import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenOne extends StatefulWidget {
  @override
  _SplashScreenOneState createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10),()=> Navigator.pushNamed(context, "/splashtwo"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implemenxt build
    return Scaffold(
      body:Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: new Color(0xff622F74),
                gradient: LinearGradient(
                    colors: [new Color(0xff29dfb7),new Color(0xff3ec7fd)],
                    begin: Alignment.centerRight,
                    end: new Alignment(-1.0, -1.0)
                ),//Gradient
              ),
            ),//Container

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius:75.0,
                  child: Icon(
                    Icons.beach_access,
                    color: Colors.deepOrange,
                    size: 50.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  'SplashScreen One',
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 24.0
                  ),
                ),
              ],
            ),

          ]
      ),//Stack
    );
  }
}