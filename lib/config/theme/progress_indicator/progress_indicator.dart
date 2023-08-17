// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyProgressIndicator extends StatelessWidget {
  //
  final double? size;
  final double strokeWidth;

  final Color color;
  final EdgeInsets margin;

  const MyProgressIndicator({
    super.key,
    this.size,
    this.strokeWidth = 4,
    //
    this.color = MyColors.tertiary,
    this.margin = MyEdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: margin,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
