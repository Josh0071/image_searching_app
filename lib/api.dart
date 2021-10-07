import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_searching_app/model/hits.dart';
import 'model/pixabay_result.dart';

class PixabayApi {
  static const base_url = 'https://pixabay.com/api/';

  Future<List<Hits>> getImages(String query) async {
    final response = await http.get(
        '$base_url?key=17828481-17c071c7f8eadf406822fada3&q=$query&image_type=photo'); // 오래

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    PixabayResult result = PixabayResult.fromJson(jsonResponse);

    return result.hits;
  }
}
