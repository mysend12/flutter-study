import 'dart:convert';

import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/domain/repository/photo_api_repository.dart';
import 'package:image_search/domain/model/photo.dart';

class PhotoApiRepositoryImpl extends PhotoApiRepository {
  final api;

  PhotoApiRepositoryImpl(this.api);

  Future<Result<List<Photo>>> fetch(String query) async {
    final response = await api.fetch(query);

    Result<List<Photo>> result;

    try{
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      Iterable hits = jsonResponse['hits'];
      result = Result.success(hits.map((e) => Photo.fromJson(e)).toList());
    } catch(e) {
      result = const Result.error("네트워크 에러");
    }

    return result;
  }
}

