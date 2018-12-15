import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
        fontFamily: 'Charm',

        textTheme: TextTheme(
          headline: TextStyle(color:new Color(0xff622F74),fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Fonts',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ), //AppBar

          body: ListView(
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                child: Text(
                  'This is a Sample Text',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ],
          )
      ),
    );
  }

}
