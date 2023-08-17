import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_main_entity.freezed.dart';

@freezed
class WeatherMainEntity with _$WeatherMainEntity {
  //
  const factory WeatherMainEntity({
    required double temp,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required int pressure,
    required int humidity,
  }) = _WeatherMainEntity;
}
