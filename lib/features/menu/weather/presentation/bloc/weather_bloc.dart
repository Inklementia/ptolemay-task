import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/core/helpers/location_helper.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_entity.dart';
import 'package:testtask/features/menu/weather/domain/usecases/weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherState.initial()) {
    on<GetLocation>((event, emit) async {
      emit(WeatherCountryLoading());
      final placemark = await MyLocationHelper.getPlacemark();

      emit(WeatherCountryLoaded(placemark.administrativeArea!));

      final result = await sl<WeatherUseCase>()
          .getWeather(placemark.administrativeArea ?? 'Tashkent');
      //
      result.fold(
        (failure) => emit(WeatherState.error(failure.message)),
        (weather) => emit(WeatherState.loaded(weather)),
      );
    });
  }
}
