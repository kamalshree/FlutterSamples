import 'package:flutter/material.dart';
import 'strings.dart';
import 'data.dart';

class Detail extends StatelessWidget {
  final Place place;

  Detail(this.place);

  @override
  Widget build(BuildContext context) {

    Widget bannerImage = Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(1.0),
            child: Hero(
              tag: place.placeName,
              child: Material(
                  child: Image(
                    image: AssetImage(place.placePosterImage),
                    fit: BoxFit.cover,
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${place.placeName}',
            style: TextStyle(
              color:new Color(0xff622F74),
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:Text(
              '${place.placeDetails}',
              style: TextStyle(
                color:new Color(0xff622F74),
                fontWeight:FontWeight.bold,
                fontSize:20.0,
              ),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: .5,
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
        body: Column(
          children: <Widget>[
            bannerImage,
          ],
        ),
      ),
    );
  }
}
