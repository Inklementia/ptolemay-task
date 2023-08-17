part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  //
  const factory WeatherState.initial() = WeatherInitial;
  const factory WeatherState.loadingCountry() = WeatherCountryLoading;
  const factory WeatherState.loadedCountry(String country) =
      WeatherCountryLoaded;
  const factory WeatherState.loading() = WeatherLoading;
  const factory WeatherState.loaded(WeatherEntity weather) = WeatherLoaded;
  const factory WeatherState.error(String errorMessage) = WeatherError;
}
