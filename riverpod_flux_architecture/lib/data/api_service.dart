import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'search_response.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('/')
  Stream<SearchResponse> getMovies(
    @Query('s') String name,
    @Query('apiKey') String apiKey,
  );
}
