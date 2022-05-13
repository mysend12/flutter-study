import 'dart:convert';

import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/photo.dart';
import 'package:http/http.dart' as http;

class PixabayApi extends PhotoApiRepository {
  final baseUrl = "https://pixabay.com/api/";
  final key = "22285008-d6c8194a38e38a3f7044551a4";

  Future<List<Photo>> fetch(String query, {http.Client? client}) async {
    client ??= http.Client();

    var parseQuery = Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo');
    final response = await http.get(parseQuery);

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}

