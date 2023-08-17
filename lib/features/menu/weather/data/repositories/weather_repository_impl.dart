import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/core/failures/failure.dart';
import 'package:testtask/features/menu/weather/data/models/weather_model.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_entity.dart';
import 'package:testtask/features/menu/weather/data/datasources/weather_remote_datasource.dart';
import 'package:testtask/features/menu/weather/domain/repositories/weather_repository.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepoImpl implements WeatherRepository {
  //
  final remoteDataSource = sl<WeatherRemoteDataSource>();

  @override
  Future<Either<Failure, WeatherEntity>> getWeather(String cityName) async {
    try {
      final result = await remoteDataSource.getWeather(cityName);
      return Right(result.toEntity());
    } catch (e) {
      return Left(GeneralFailure(message: e.toString()));
    }
  }
}
