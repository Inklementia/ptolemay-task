// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_main_entity.dart';

part 'weather_main_model.freezed.dart';
part 'weather_main_model.g.dart';

@freezed
class WeatherMainModel with _$WeatherMainModel {
  const WeatherMainModel._();
  //
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WeatherMainModel({
    required double temp,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required int pressure,
    required int humidity,
  }) = _WeatherMainModel;

  factory WeatherMainModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainModelFromJson(json);
}

extension WeatherMainModelExtension on WeatherMainModel {
  WeatherMainEntity toEntity() => WeatherMainEntity(
        temp: temp,
        feelsLike: feelsLike,
        tempMin: tempMin,
        tempMax: tempMax,
        pressure: pressure,
        humidity: humidity,
      );
}
