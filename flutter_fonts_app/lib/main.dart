import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home:Scaffold(
        appBar: AppBar(
          title:Text('Fonts',
          style: TextStyle(
            color:Colors.white,
          ),
        ),
        ),//AppBar
        body:ListView(
          children: <Widget>[
            Container(
              child:Text(
                'This is a Sample Text',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: new Color(0xff622F74),
                ),
              ),
            ),

            Container(
              child:Text(
                'This is a Sample Text',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Dancing Script',
                  fontSize: 30.0,
                  color: new Color(0xff622F74),
                ),
              ),
            ),


            Container(
              child:Text(
                'This is a Sample Text',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Mountains of Christmas',
                  fontSize: 30.0,
                  color: new Color(0xff622F74),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
