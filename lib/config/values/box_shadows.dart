// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/values/colors.dart';

// Project imports:

class MyBoxShadows {
//
  static const List<BoxShadow> none = [
    BoxShadow(
      color: MyColors.transparent,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 0,
    )
  ];
  static const List<BoxShadow> sliver = [
    BoxShadow(
      color: MyColors.primary,
      blurRadius: 0.0,
      spreadRadius: 0.0,
      offset: Offset(0, 2),
    )
  ];
  //
  static const List<BoxShadow> bottom = [
    BoxShadow(
      color: MyColors.blackA10,
      offset: Offset(0, 2),
      blurRadius: 13,
      spreadRadius: 0,
    )
  ];
}
