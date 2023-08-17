// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../config/router/navigator_service.dart' as _i7;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i5;
import '../../features/menu/counter/cubit/counter_cubit.dart' as _i4;
import '../../features/menu/theme_switcher/presentation/cubit/theme_switcher_cubit.dart'
    as _i9;
import '../../features/menu/weather/data/datasources/weather_remote_datasource.dart'
    as _i11;
import '../../features/menu/weather/data/repositories/weather_repository_impl.dart'
    as _i13;
import '../../features/menu/weather/domain/repositories/weather_repository.dart'
    as _i12;
import '../../features/menu/weather/domain/usecases/weather_usecase.dart'
    as _i14;
import '../../features/menu/weather/presentation/bloc/weather_bloc.dart'
    as _i10;
import '../helpers/kmp_search_helper.dart' as _i6;
import '../helpers/network_info.dart' as _i8;
import '../network/api_provider.dart' as _i3;

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
    gh.singleton<_i3.ApiProvider>(_i3.ApiProvider());
    gh.factory<_i4.CounterCubit>(() => _i4.CounterCubit());
    gh.factory<_i5.HomeCubit>(() => _i5.HomeCubit());
    gh.singleton<_i6.KmpSearchImpl>(_i6.KmpSearchImpl());
    gh.singleton<_i7.NavigatorService>(_i7.NavigatorService());
    gh.singleton<_i8.NetworkInfoImpl>(_i8.NetworkInfoImpl());
    gh.factory<_i9.ThemeSwitcherCubit>(() => _i9.ThemeSwitcherCubit());
    gh.factory<_i10.WeatherBloc>(() => _i10.WeatherBloc());
    gh.lazySingleton<_i11.WeatherRemoteDataSource>(
        () => _i11.WeatherRemoteDataSourceImpl(gh<_i3.ApiProvider>()));
    gh.lazySingleton<_i12.WeatherRepository>(() => _i13.WeatherRepoImpl());
    gh.lazySingleton<_i14.WeatherUseCase>(
        () => _i14.WeatherUseCase(gh<_i12.WeatherRepository>()));
    return this;
  }
}
