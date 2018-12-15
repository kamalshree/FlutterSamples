import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {

                }),
            title: Text('Tabs'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Tab1"),
                ),
                Tab(
                  child: Text("Tab2"),
                ),
                Tab(
                  child: Text("Tab3"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              new Card(
                color: Colors.yellow,
                child: Center(child: Text('Tab1')),
              ),
              new Card(
                color: Colors.orange,
                child: Center(child: Text('Tab2')),
              ),
              new Card(
                color: Colors.lightGreen,
                child: Center(child: Text('Tab3')),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
