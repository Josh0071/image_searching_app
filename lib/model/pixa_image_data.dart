import 'package:image_searching_app/model/pixa_image.dart';

class PixaImageData {
  PixaImageData.fromJson(dynamic json) {
    total = json['total'];
    totalHits = json['totalHits'];
    hits.add(PixaImage.fromJson(json));
  }

  int total;
  int totalHits;
  var hits;

  PixaImageData(this.total, this.totalHits, this.hits);
}