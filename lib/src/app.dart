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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print('Hi there!');
            },
          ),
          appBar: AppBar(
            title: Text('Lets see some images'),
          ),
        )

    );
  }

}


