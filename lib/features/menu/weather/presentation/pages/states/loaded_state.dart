import 'package:flutter/material.dart';
import 'package:testtask/config/theme/text/text14/text_14.dart';
import 'package:testtask/config/theme/text/text24/text_24.dart';
import 'package:testtask/config/values/spaces.dart';
import 'package:testtask/features/menu/weather/domain/entities/weather_entity.dart';

class WeatherLoadedState extends StatelessWidget {
  //
  final WeatherEntity weather;

  const WeatherLoadedState({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText14(weather.name),
          MySpaces.v16,
          MyText24(weather.main.temp.toString()),
        ],
      ),
    );
  }
}
