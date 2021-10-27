import 'package:flutter/material.dart';
import 'package:image_searching_app/model/api.dart';
import 'package:image_searching_app/view_model/pixabay_result.dart';

class ViewModel with ChangeNotifier {
  final _hits = PixabayApi();
  PixabayResult? _response;

  PixabayResult? get response => _response;

  Future getImage(String image) async {
    _response = await _hits.getImages(image);
    notifyListeners();
  }
}
