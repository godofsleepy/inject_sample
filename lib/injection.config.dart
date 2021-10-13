// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'api.dart' as _i4;
import 'module.dart' as _i6;
import 'repository.dart' as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final moduleInject = _$ModuleInject();
  gh.singleton<_i3.Client>(moduleInject.httpClient);
  gh.singleton<_i4.ApiService>(_i4.ApiService(get<_i3.Client>()),
      dispose: (i) => i.dispose());
  gh.lazySingleton<_i5.ExampleRepository>(
      () => _i5.ExampleRepositoryImpl(service: get<_i4.ApiService>()));
  return get;
}

class _$ModuleInject extends _i6.ModuleInject {}
