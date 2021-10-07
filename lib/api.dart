import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:image_searching_app/model/pixa_image.dart';
import 'package:image_searching_app/model/pixa_image_data.dart';

Future<List<PixaImage>> fetchList() async {
  final response = await http.get(
      'https://pixabay.com/api/?key=17828481-17c071c7f8eadf406822fada3&q=iphone&image_type=photo');

  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse.map((pixaimagedata) => PixaImageData.fromJson(pixaimagedata)).toList();
  }

  throw Exception('Error');
}
