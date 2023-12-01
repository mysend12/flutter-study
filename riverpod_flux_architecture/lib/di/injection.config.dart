// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:riverpod_flux_architecture/data/api_service.dart' as _i3;
import 'package:riverpod_flux_architecture/data/movies_repository.dart' as _i6;
import 'package:riverpod_flux_architecture/di/modules.dart' as _i9;
import 'package:riverpod_flux_architecture/presentation/home/home_vm.dart'
    as _i8;
import 'package:riverpod_flux_architecture/router/route_parser.dart' as _i5;
import 'package:riverpod_flux_architecture/router/router_delegate.dart' as _i4;
import 'package:riverpod_flux_architecture/router/router_vm.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.singleton<_i3.ApiService>(networkModule.getApi());
    gh.factory<_i4.AppRouterDelegate>(() => _i4.AppRouterDelegate());
    gh.factory<_i5.AppRoutingParser>(() => _i5.AppRoutingParser());
    gh.singleton<_i6.MoviesRepository>(
        _i6.MoviesRepository(gh<_i3.ApiService>()));
    gh.factory<_i7.RouteHandler>(() => _i7.RouteHandler());
    gh.singleton<_i7.RouterVM>(_i7.RouterVM(gh<_i7.RouteHandler>()));
    gh.factory<_i8.HomeViewModel>(
        () => _i8.HomeViewModel(gh<_i6.MoviesRepository>()));
    return this;
  }
}

class _$NetworkModule extends _i9.NetworkModule {}
