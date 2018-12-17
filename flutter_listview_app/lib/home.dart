import 'package:flutter/material.dart';
import 'strings.dart';
import 'data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///create book tile hero
    createTile(Place place) => Hero(
          tag: place.placeName,
          child: Material(
            elevation: 15.0,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${place.placeName}');
              },
              child: Image(
                image: AssetImage(place.placeImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 3 / 2,
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            children: places.map((place) => createTile(place)).toList(),
          ),
        )
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appBarTitles,
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: .5,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              //
            },
          ),
          centerTitle: true,
          title: Text(Strings.appBarTitles),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                //
              },
            ),
          ],
        ),
        body: grid,
      ), //Scaffold
    ); //MaterialApp
  }
}
