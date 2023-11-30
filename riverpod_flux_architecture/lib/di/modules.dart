import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_flux_architecture/data/api_service.dart';

@module
abstract class NetworkModule {
  @singleton
  ApiService getApi() {
    final dio = Dio(
      BaseOptions(
        baseUrl: "https://www.omdbapi.com",
      ),
    );
    dio.interceptors.add(PrettyDioLogger());
    final client = ApiService(dio);
    return client;
  }
}