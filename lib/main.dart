import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  //titleSection widget

  Widget titleSection=Container(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
            child:Text(
              Strings.appHeadingTitle,
              style: TextStyle(
                color:new Color(0xff622F74),
                fontWeight:FontWeight.bold,
                fontSize:30.0,
              ),
            ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child:Text(
            Strings.appsubHeadingTitle,
            style: TextStyle(
              color:new Color(0xff622F74),
              fontWeight:FontWeight.bold,
              fontSize:20.0,
            ),
          ),
        ),
      ],
    ),//Column
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appBarTitle,
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.appBarTitle),
        ),
        body:ListView(
          children: <Widget>[
            titleSection,
          ],
        ),
      ),//Scaffold
    );//MaterialApp
  }
}
