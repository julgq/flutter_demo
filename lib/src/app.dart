// Import flutter helper library
import 'dart:convert';
import 'package:flutter/material.dart';
// https://pub.dartlang.org/packages/http#-readme-tab-
import 'package:http/http.dart' as http;
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _App();
  }
}

class _App extends State<App> {

  // contador incializado en 0 al abrir la aplicación
  int counter = 0;

  // declaración de images una lista e objetos ImageModel
  List<ImageModel> images = [];

  // Funcion fetchImage la cual hacer un get de un API, incrementa el counter en 1 y crea un objeto ImageModel.
  // Agrega a images.add un objeto ImageModel al modelo.
  void fetchImage() async {
    counter++;
    var response =
        await http.get('https://jsonplaceholder.typicode.com/photos/$counter');

    var imageModel = ImageModel.fromJson(json.decode(response.body));
    print(imageModel);

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      body: ImageList(images), // Muestra un widget ImageList al que se le pasa ls lista de images del state.
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
