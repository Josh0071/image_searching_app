import 'dart:async';
import 'package:image_searching_app/model/api.dart';
import 'package:image_searching_app/view_model/hits.dart';

class ViewModel {
 late final response;
  final _hits = PixabayApi();
  final _hitsStreamController = StreamController<List<Hits>>();

  Stream<List<Hits>> get hitsStream => _hitsStreamController.stream;

  void getImage(String querry) {
    response = _hits.getImages(querry);
  }

  void get() {
    _hitsStreamController.add(this.response);
  }
}
