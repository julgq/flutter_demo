import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          return buildImage(images[index]);
        });
  }

// Widget función para construir el cotenedor de la imagen.
  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey,
      )),
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Padding(
              child: Image.network(image.url),
              padding: EdgeInsets.only(bottom: 15.0)),
          Text(image.title),
        ],
      ),
    );
  }
}
