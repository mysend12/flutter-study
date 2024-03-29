import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod_flux_architecture/data/movies_repository.dart';
import 'package:riverpod_flux_architecture/domain/content_status.dart';
import 'package:riverpod_flux_architecture/domain/lce.dart';
import 'package:riverpod_flux_architecture/domain/movie.dart';
import 'package:riverpod_flux_architecture/presentation/home/home_vm.dart';
import 'package:rxdart/rxdart.dart';

import 'home_vm_test_mocks.dart';
import 'test_change_provider.dart';
import 'test_utils.dart';

@GenerateMocks([MoviesRepository])
void main() {
  late bool isSuccess;

  var repo = MockMoviesRepository();
  late HomeViewModel viewModel;
  late TestChangeNotifier<HomeState> tester;

  final movies = [
    Movie(
      id: '221',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
    Movie(
      id: '221',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
    Movie(
      id: '221',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
    Movie(
      id: '221',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
  ];

  group('home vm tests', () {
    setUp(() {
      isSuccess = true;
      viewModel = HomeViewModel(repo);
      tester = TestChangeNotifier(viewModel);
    });

    tearDown(() {
      viewModel.dispose();
    });

    when(repo.getMoviesFromServer(any)).thenAnswer((realInvocation) {
      if (isSuccess) {
        return Stream.value(Lce.content(movies)).startWith(Lce.loading());
      } else {
        return Stream<Lce<List<Movie>>>.value(Lce.error('something went wrong'))
            .startWith(Lce.loading());
      }
    });

    vmTest('when movie searched and found then show result', () async {
      viewModel.searchMovie('blase');
      await tester.wait();
      tester.emitsItemCount(2);
      tester.emitsInOrder([
        (s) => equalsValue(ContentStatus.loading, s.contentStatus),
        (s) => equalsValue(movies, s.searchResult),
      ]);
    });

    vmTest('when movie searched and query is empty then no search result',
        () async {
      viewModel.searchMovie('');
      await tester.wait();
      tester.emitsItemCount(0);
    });

    vmTest('when move searched and api error then show error', () async {
      isSuccess = false;
      viewModel.searchMovie('query');
      await tester.wait();
      tester.emitsItemCount(2);
      tester.emitsInOrder([
        (s) => equalsValue(ContentStatus.loading, s.contentStatus),
        (s) => equalsValue(
            ContentStatus.error('something went wrong'), s.contentStatus),
      ]);
    });

    vmTest('when add to history then update history', () async {
      viewModel.searchMovie('query');
      await tester.wait();
      viewModel.addMovieToHistory(0);
      tester.emitsItemCount(3);
      tester.emitsItemAt(2, (s) => equalsValue(movies[0], s.history[0]));
    });

    vmTest('when add to history and movie already added then no history update',
        () async {
      viewModel.searchMovie('query');
      await tester.wait();
      viewModel.addMovieToHistory(0);
      tester.emitsItemCount(3);
      tester.emitsItemAt(2, (s) => equalsValue(movies[0], s.history[0]));
      viewModel.addMovieToHistory(0);
      // verify no new state is emitted
      tester.emitsItemCount(3);
    });

    vmTest('when movie click navigate to movie details', () async {
      viewModel.searchMovie('query');
      await tester.wait();
      viewModel.loadMovieDetails(0);
      tester.emitsItemCount(3);
      tester.emitsItemAt(
        2,
        (s) =>
            equalsValue(HomeNav.details, s.nav.type) &&
            equalsValue(movies[0], s.nav.args),
      );
    });
  });
}
