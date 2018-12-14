import 'package:flutter/material.dart';
import 'home_page.dart';
import 'image_carousel.dart';
import 'copmplex_page.dart';

Future<void> main() async {
  //final prefs = await SharedPreferences.getInstance();
  //final keyValueStore = FlutterKeyValueStore(prefs);
  //final store = createStore(keyValueStore);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: ImageCarousel(),
      home: ComplexPage(
        title: "Hello",
      ),
    );
  }
}
