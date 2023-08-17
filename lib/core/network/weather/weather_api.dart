// Package imports:
import 'package:chopper/chopper.dart';
import 'package:testtask/config/api/api_urls.dart';
import 'package:testtask/features/menu/weather/data/models/weather_model.dart';

part 'weather_api.chopper.dart';

@ChopperApi()
abstract class WeatherApi extends ChopperService {
  static WeatherApi create([ChopperClient? client]) => _$WeatherApi(client);

  @Get(path: ApiUrls.apiWeather)
  Future<Response<WeatherModel>> getWeatherByCity(
    @Query('q') String city, {
    @Query('units') String units = 'metric',
    @Query('appid') String appid = ApiUrls.apiKey,
  });
}
