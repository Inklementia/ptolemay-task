import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testtask/features/menu/weather/data/models/weather_main_model.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_entity.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  //
  const WeatherModel._();

  const factory WeatherModel({
    // required Coord coord,
    // required List<Weather> weather,
    required WeatherMainModel main,
    // required int visibility,
    // required Wind wind,
    // required Clouds clouds,
    // required int dt,
    // required Sys sys,
    // required int timezone,
    // required int id,
    required String name,

    // required int cod,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

extension WeatherModelExtension on WeatherModel {
  WeatherEntity toEntity() => WeatherEntity(
        main: main.toEntity(),
        name: name,
      );
}
