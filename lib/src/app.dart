// Import flutter helper library
import 'package:flutter/material.dart';

// https://pub.dartlang.org/packages/http#-readme-tab-
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _App();
  }
}

class _App extends State<App> {
  int counter = 0;

  void fetchImage() {
    counter++;
    http.get('https://jsonplaceholder.typicode.com/photos/$counter');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: fetchImage,
      ),
      appBar: AppBar(
        title: Text('Lets see some images'),
      ),
    ));
  }
}
