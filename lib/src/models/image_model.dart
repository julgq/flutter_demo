class ImageModel {
  int id;
  String url;
  String title;

  // Primer forma de constructor
  ImageModel(this.id, this.url, this.title);

  // Constructor usando Json
  ImageModel.fromJson(Map<String, dynamic> parsedJson){
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}