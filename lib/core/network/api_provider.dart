// Package imports:
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:testtask/config/api/api_urls.dart';
import 'package:testtask/core/network/custom_convertor.dart';
import 'package:testtask/core/network/weather/weather_api.dart';

@singleton
class ApiProvider {
  late ChopperClient _client;
  //
  late WeatherApi weatherApi;

  ApiProvider() {
    _client = ChopperClient(
      baseUrl: Uri.tryParse(ApiUrls.apiUrl + ApiUrls.apiVersion),
      interceptors: _interceptors(),
      //
      services: [
        //
        WeatherApi.create(),
      ],
      //
      converter: MyJsonConverter(),
      errorConverter: MyJsonConverter(),
    );

    //

    weatherApi = _client.getService<WeatherApi>();
  }

  //

  static List _interceptors() {
    List interceptors = [];

    return interceptors;
  }

  void dispose() {
    _client.dispose();
  }
}
