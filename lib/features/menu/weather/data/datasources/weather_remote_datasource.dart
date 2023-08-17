import 'package:injectable/injectable.dart';
import 'package:testtask/core/failures/failure.dart';
import 'package:testtask/core/network/api_provider.dart';
import 'package:testtask/features/menu/weather/data/models/weather_model.dart';

abstract class WeatherRemoteDataSource {
  ///
  Future<WeatherModel> getWeather(String cityName);
}

@LazySingleton(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  //
  final ApiProvider apiProvider;
  WeatherRemoteDataSourceImpl(this.apiProvider);

  @override
  Future<WeatherModel> getWeather(String cityName) async {
    final response = await apiProvider.weatherApi.getWeatherByCity(cityName);
    if (response.statusCode != 200)
      throw GeneralFailure(message: response.error.toString());

    return response.body!;
  }
}
