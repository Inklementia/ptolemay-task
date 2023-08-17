// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/values/colors.dart';

enum MyButtonColor {
  primary,
  secondary,
  neutral,
  red,
  white;
}

extension MyButtonTypeExtension on MyButtonColor {
  //
  Color get color {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.primary;
      case MyButtonColor.secondary:
        return MyColors.secondary;
      case MyButtonColor.neutral:
        return MyColors.neutral;
      case MyButtonColor.red:
        return MyColors.red;
      case MyButtonColor.white:
        return MyColors.white;
      default:
        return MyColors.primary;
    }
  }

  Color get tonedColor {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.primaryA10;
      case MyButtonColor.secondary:
        return MyColors.tertiaryA10;
      case MyButtonColor.neutral:
        return MyColors.secondary;
      case MyButtonColor.red:
        return MyColors.redA10;
      case MyButtonColor.white:
        return MyColors.white;
      default:
        return MyColors.primaryA10;
    }
  }

  Color get disabledColor {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.primaryA50;
      case MyButtonColor.secondary:
        return MyColors.secondaryA50;
      case MyButtonColor.neutral:
        return MyColors.neutralA50;
      case MyButtonColor.red:
        return MyColors.redA50;
      case MyButtonColor.white:
        return MyColors.white;
      default:
        return MyColors.primaryA50;
    }
  }

  Color get disabledTextColor {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.secondaryA50;
      case MyButtonColor.secondary:
        return MyColors.white;
      case MyButtonColor.neutral:
        return MyColors.neutralA50;
      case MyButtonColor.red:
        return MyColors.redA50;
      case MyButtonColor.white:
        return MyColors.white;
      default:
        return MyColors.primaryA50;
    }
  }

  Color get textColor {
    switch (this) {
      case MyButtonColor.primary:
        return MyColors.white;
      case MyButtonColor.secondary:
        return MyColors.white;
      case MyButtonColor.neutral:
        return MyColors.white;
      case MyButtonColor.red:
        return MyColors.white;
      case MyButtonColor.white:
        return MyColors.secondary;
      default:
        return MyColors.secondary;
    }
  }
}
