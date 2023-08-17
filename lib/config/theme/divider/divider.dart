// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/values/colors.dart';

class MyDivider extends StatelessWidget {
  //
  final Color color;

  final double height;
  final double hPadding;
  final double thickness;

  final double? leftPadding, rightPadding;

  const MyDivider({
    super.key,
    this.height = 1,
    //
    this.leftPadding,
    this.rightPadding,
    //
    this.hPadding = 0,
    this.thickness = 1,
    //
    this.color = MyColors.neutralVariant1,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: height,
      thickness: thickness,
      indent: leftPadding ?? hPadding,
      endIndent: rightPadding ?? hPadding,
    );
  }
}
