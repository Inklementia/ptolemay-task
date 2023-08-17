import 'package:dartz/dartz.dart';
import 'package:testtask/core/failures/failure.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getWeather(String cityName);
}
