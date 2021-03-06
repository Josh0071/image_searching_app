import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_searching_app/view_model/pixabay_result.dart';

class PixabayApi {
  static const baseUrl = 'https://pixabay.com/api/';

  Future<PixabayResult> getImages(String query) async {
    final response = await http.get(Uri.parse(
        '$baseUrl?key=17828481-17c071c7f8eadf406822fada3&q=$query&image_type=photo'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    PixabayResult result = PixabayResult.fromJson(jsonResponse);

    return result;
  }
}
