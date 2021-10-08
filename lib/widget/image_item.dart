import 'package:flutter/material.dart';
import 'package:image_searching_app/model/hits.dart';

class ImageItem extends StatelessWidget {
  final Hits hits;

  const ImageItem({Key key, @required this.hits}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right:50),
      child: Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Image.network(
                    hits.previewURL,
                    width: 200,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5,),
                  Text(hits.tags,
                  style: TextStyle(
                    fontSize: 17
                  ),),
                  SizedBox(height: 5,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
