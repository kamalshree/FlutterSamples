import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body:Center(
        child: RaisedButton(
            color: new Color(0xff622F74),
            child: Text("Go Back",
            style: TextStyle(
              color: Colors.white,
            ),),
            onPressed: (){
          Navigator.pop(context);
        }),
      ),
    );
  }
}
