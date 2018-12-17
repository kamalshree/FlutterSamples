import 'package:flutter/material.dart';
import 'strings.dart';
import 'data.dart';
import 'home.dart';
import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: Strings.appBarTitles,
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff622F74),
        platform: TargetPlatform.android,
      ),
      home: Home(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  ///Generate parameterized route --> e.g: detail/place title
  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final placeName = path[1];

    Place place = places.firstWhere((it) => it.placeName == placeName);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(place),
    );
  }
}
