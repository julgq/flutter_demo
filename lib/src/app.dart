// Import flutter helper library
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _App();
  }
}

class _App extends State<App> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter += 1;
          });
          print(counter);
        },
      ),
      appBar: AppBar(
        title: Text('Lets see some images'),
      ),
    ));
  }
}
