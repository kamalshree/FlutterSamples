import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'splashscreen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
    ThemeData(
        primaryColor:  new Color(0xff622F74),
        accentColor: Colors.orange
    ),
    debugShowCheckedModeBanner: false,
    home: Splashscreen(),
    routes: routes));