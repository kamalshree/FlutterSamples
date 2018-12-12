import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //textSection Widget
  Widget textSection = Container(
    child: new Column(
      children: <Widget>[

        //Mainheading
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            Strings.posterTitle,
            style: TextStyle(
              color: new Color(0xff622F74),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //Details
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            Strings.posterDetails,
            style: TextStyle(
              color: new Color(0xff622F74),
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appBarTitle),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/poster.jpg',
            fit: BoxFit.cover,
          ),
          textSection,
        ],
      ),
    );
  }
}
