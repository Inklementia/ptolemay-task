import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testtask/core/failures/failure.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_entity.dart';
import 'package:testtask/features/menu/weather/domain/repositories/weather_repository.dart';

//real business logic
@lazySingleton
class WeatherUseCase {
  //
  final WeatherRepository repository;

  WeatherUseCase(this.repository);

  Future<Either<Failure, WeatherEntity>> getWeather(String cityName) async {
    return await repository.getWeather(cityName);
    // space for business logic
  }
}
