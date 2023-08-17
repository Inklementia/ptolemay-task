import 'package:flutter/material.dart';
import 'package:testtask/config/theme/progress_indicator/progress_indicator.dart';
import 'package:testtask/config/theme/text/text14/text_14.dart';
import 'package:testtask/config/values/spaces.dart';

class WeatherLoadingState extends StatelessWidget {
  //
  final String loadingText;
  const WeatherLoadingState({
    super.key,
    required this.loadingText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyProgressIndicator(
            size: 36,
            strokeWidth: 4,
          ),
          MySpaces.v12,
          MyText14(loadingText),
        ],
      ),
    );
  }
}
