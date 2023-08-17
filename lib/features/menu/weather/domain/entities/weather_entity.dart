import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_main_entity.dart';

part 'weather_entity.freezed.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  //
  const factory WeatherEntity({
    required WeatherMainEntity main,
    required String name,
  }) = _WeatherEntity;
}
