import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Container myArticles(String imageVal,String heading,String subHeading){
    return Container(
      width: 160.0,
      child:Card(
        child:Wrap(
          children: <Widget>[
            Image.network(imageVal),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }


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
          title: Text("Scroll View - Horizontal",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ), //Appbar
        body:Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 300,
            child:ListView(
              scrollDirection: Axis.horizontal,
                children: <Widget>[
                  myArticles("https://images.unsplash.com/photo-1503875154399-95d2b151e3b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", "Heading 1", "SubHeading1"),
                  myArticles("https://images.unsplash.com/photo-1484581400079-58a319a15a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjIxMTIzfQ&auto=format&fit=crop&w=500&q=60", "Heading 2", "SubHeading2"),
                  myArticles("https://images.unsplash.com/photo-1515875294982-4796669a7932?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "Heading 3", "SubHeading3"),
                  myArticles("https://images.unsplash.com/photo-1528155124528-06c125d81e89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", "Heading 4", "SubHeading4"),
                  myArticles("https://images.unsplash.com/photo-1542052722982-1c9f552a534b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=634&q=80", "Heading 5", "SubHeading5"),
                ],
            ),//Listview
        ),
      ), //Scaffold
    );
  }
}

