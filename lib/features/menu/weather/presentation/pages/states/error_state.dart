import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/text/text14/text_14.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/spaces.dart';

class WeatherErrorState extends StatelessWidget {
  //
  final String errorText;

  const WeatherErrorState({
    super.key,
    required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIcon(
            icon: MyIcons.error,
            size: 36,
            color: MyColors.red,
          ),
          MySpaces.v12,
          MyText14(
            errorText,
            color: MyColors.red,
          ),
        ],
      ),
    );
  }
}
