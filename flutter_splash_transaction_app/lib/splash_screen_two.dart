import 'package:flutter/material.dart';

import 'dart:async';

class SplashScreenTwo extends StatefulWidget {
  @override
  _SplashScreenTwoState createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10),()=> Navigator.pushNamed(context, "/splashthree"));
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
                    colors: [new Color(0xff6094e8),new Color(0xffde5cbc)],
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
                    Icons.local_bar,
                    color: Colors.deepOrange,
                    size: 50.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  'SplashScreen Two',
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