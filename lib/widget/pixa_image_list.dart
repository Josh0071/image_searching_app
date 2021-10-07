import 'package:flutter/material.dart';

class PixaImagedata extends StatelessWidget {
  final String tags;
  final String previewURL;
  final num previewWidth;
  final num previewHeight;

  PixaImagedata({this.tags, this.previewURL, this.previewWidth, this.previewHeight});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: previewWidth,
            height: previewHeight,
            child: Image.network('$previewURL')
          ),
          Text(tags),
        ],
      ),
    );
  }
}
