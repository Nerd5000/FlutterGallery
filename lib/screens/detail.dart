import 'package:flutter/material.dart';
import 'package:gallery/models/photo.dart';

class Detail extends StatelessWidget {
  final Photo _photo;

  const Detail(this._photo);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              _photo.title,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  _photo.url,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
