import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //buildButton function
    Column buildButton(IconData icon,String label){
      Color color=new Color(0xff622F74) ;
      return Column(
        children: <Widget>[
          Icon(icon,color:color),
          Container(
            child:Text(
              label,
              style:TextStyle(
                color:color,
                fontSize: 20.0
              ),
            ),
          ),
        ],
      );
    }


    //buttonDisplay Widget
    Widget buttonDisplay=Container(
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildButton(Icons.phone,Strings.appButtonCall),
            buildButton(Icons.airplanemode_active,Strings.appButtonAirplane),
            buildButton(Icons.chat_bubble,Strings.appButtonChat),
            buildButton(Icons.radio,Strings.appButtonMusic),
          ],
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:Strings.appBarTitle,
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home:Scaffold(
        appBar:AppBar(
          title:Text(Strings.appBarTitle),
        ),
        body:ListView(
          children: <Widget>[
            buttonDisplay,
          ],
        ),
      ),
    );

  }
}

