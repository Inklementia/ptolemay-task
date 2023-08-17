// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/strings.dart';

enum ActionType {
  edit,
  copy,
  delete,
}

extension ActionTypeExtension on ActionType {
  //
  String get icon {
    switch (this) {
      case ActionType.edit:
        return MyIcons.edit;
      case ActionType.copy:
        return MyIcons.copy;
      case ActionType.delete:
        return MyIcons.close;
    }
  }

  String get title {
    switch (this) {
      case ActionType.edit:
        return MyStrings.edit;
      case ActionType.copy:
        return MyStrings.copy;
      case ActionType.delete:
        return MyStrings.delete;
    }
  }

  //

  Color get iconColor {
    switch (this) {
      case ActionType.edit:
        return MyColors.tertiary;
      case ActionType.delete:
        return MyColors.red;
      case ActionType.copy:
        return MyColors.secondary;
    }
  }

  Color get color {
    switch (this) {
      case ActionType.edit:
        return MyColors.primary;
      case ActionType.delete:
        return MyColors.primary;
      case ActionType.copy:
        return MyColors.primary;
    }
  }
}
