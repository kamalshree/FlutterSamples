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
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GridView',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ), //AppBar
        body: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            crossAxisSpacing: 2.0,
            children: List.generate(6, (index) {
              return Image.asset(
                'images/image$index.jpg',
                width: 200.0,
                height: 200.0,
              );
            }),
          );
        }),
      ), //Scaffold
    );
  }
}
