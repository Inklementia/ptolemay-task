// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/strings.dart';

// Project imports:

enum AlertType {
  error,
  errorWifi,
  //
  warning,
  //
  success,
}

extension AlertTypeExtension on AlertType {
  //
  String get icon {
    switch (this) {
      case AlertType.error:
        return MyIcons.error;
      case AlertType.errorWifi:
        return MyIcons.errorWifi;
      case AlertType.warning:
        return MyIcons.warning;
      case AlertType.success:
        return MyIcons.success;
    }
  }

  String get title {
    switch (this) {
      case AlertType.error:
        return MyStrings.error;
      case AlertType.errorWifi:
        return MyStrings.errorWifi;
      case AlertType.warning:
        return MyStrings.warning;
      case AlertType.success:
        return MyStrings.success;
    }
  }

  //

  Color get color {
    switch (this) {
      case AlertType.error:
        return MyColors.red;
      case AlertType.errorWifi:
        return MyColors.red;
      case AlertType.warning:
        return MyColors.yellow;
      case AlertType.success:
        return MyColors.green;
    }
  }
}
