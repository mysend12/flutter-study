
import 'package:image_search/data/data_source/pixabay_api.dart';
import 'package:image_search/data/repository/photo_api_repository_impl.dart';
import 'package:image_search/domain/repository/photo_api_repository.dart';
import 'package:image_search/domain/use_case/get_photos_use_case.dart';
import 'package:image_search/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

// 1. Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 의존성 관계가 없는 독립적인 Provider
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(create: (context) => http.Client()),
];

// 3. 의존성이 필요한 Provider
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, PixabayApi>(
      update: (context, client, _) => PixabayApi(client)
  ),
  ProxyProvider<PixabayApi, PhotoApiRepository>(
      update: (context, pixabayApi, _) => PhotoApiRepositoryImpl(pixabayApi),
  ),
  ProxyProvider<PhotoApiRepository, GetPhotosUseCase>(
    update: (context, repository, _) => GetPhotosUseCase(repository),
  ),
];

// 4. ViewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(context.read<GetPhotosUseCase>()),
  ),
];