part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getLocation() = GetLocation;
  const factory WeatherEvent.getWeather() = GetWeather;
}
