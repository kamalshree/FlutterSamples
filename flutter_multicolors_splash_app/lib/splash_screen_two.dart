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
    //Timer(Duration(seconds: 5),()=> SplashScreenTwo());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff622F74),
              gradient: LinearGradient(
                colors: [new Color(0xff29dfb7),new Color(0xff3ec7fd)],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                tileMode: TileMode.mirror,
              ),
            ),
          ), //Container
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: Icon(
                  Icons.beach_access,
                  color: Colors.deepOrange,
                  size: 50.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ), //Padding
              Text(
                'This is a sample text.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ), //Text
            ],
          ),
        ],
      ), //Stack
    ); //Scaffold
  }
}