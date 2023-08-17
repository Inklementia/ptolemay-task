import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/theme/button/button.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/text/text14/text_14.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/spaces.dart';

class WeatherNoPermissionState extends StatelessWidget {
  //
  final Function() onRetry;
  const WeatherNoPermissionState({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyIcon(
            icon: MyIcons.warning,
            size: 36,
            color: MyColors.tertiary,
          ),
          MySpaces.v12,
          MyText14(
            'No permission',
            color: MyColors.tertiary,
          ),
          MySpaces.v12,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton.secondary(
                label: 'Request Permission',
                onTap: onRetry,
                isSmall: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
