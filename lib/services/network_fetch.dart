import 'package:gallery/models/photo.dart';
import 'package:http/http.dart';
import 'dart:convert';

class NetworkFetch {
  Future<List<Photo>> getData() async {
    List<Photo> _photos = List<Photo>();
    var data = await get('https://jsonplaceholder.typicode.com/photos');
    var dataConverted = json.decode(data.body);
    for (var photo in dataConverted) {
      _photos.add(
        Photo(
          id: photo['id'],
          thumbnail: photo['thumbnailUrl'],
          title: photo['title'],
          url: photo['url'],
        ),
      );
    }
    return _photos;
  }
}
