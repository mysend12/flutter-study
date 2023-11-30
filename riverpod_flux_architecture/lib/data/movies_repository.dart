import 'package:fimber/fimber.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_flux_architecture/data/api_service.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/movie.dart';
import '../domain/lce.dart';
import 'search_response.dart';

@singleton
class MoviesRepository {
  final ApiService api;

  MoviesRepository(this.api);

  Stream<Lce<List<Movie>>> getMoviesFromServer(String query) {
    return api
        .getMovies(
      query,
      dotenv.env['API_KEY'] ?? '',
    )
        .map<Lce<List<Movie>>>((response) {
      if (response.response == "True") {
        final movies = _convertSearchResponse(response.movies);
        return Lce.content(movies);
      } else {
        return Lce.error(response.error);
      }
    }).onErrorReturnWith((error, stackTrace) {
      Fimber.e(error.toString());
      return Lce.error(error.toString());
    }).startWith(const Lce.loading());
  }

  List<Movie> _convertSearchResponse(List<Search> response) {
    return response
        .map((it) => Movie(
              id: it.id,
              title: it.title,
              year: it.year,
              type: it.type,
              image: it.image,
            ))
        .toList();
  }
}
