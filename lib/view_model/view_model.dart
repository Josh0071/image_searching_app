import 'dart:async';
import 'package:image_searching_app/model/api.dart';
import 'package:image_searching_app/view_model/pixabay_result.dart';

class ViewModel {
  late final response;

  ViewModel(this.response);

  final _hits = PixabayApi();
  final _hitsStreamController = StreamController<PixabayResult>();

  Stream<PixabayResult> get hitsStream => _hitsStreamController.stream;

  void getImage(String querry) {
    response = _hits.getImages(querry);
  }

  void get() {
    _hitsStreamController.add(this.response);
  }
}
