// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/text/text12/text_12.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyLabel extends StatelessWidget {
  //
  final String title;

  final Color textColor;
  final Color bgColor;

  const MyLabel({
    super.key,
    required this.title,
    required this.textColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      color: bgColor,
      padding: MyEdgeInsets.h8v4,
      borderRadius: MyBorderRadius.allRounded48,
      child: MyText12(
        title,
        color: textColor,
        toUpperCase: true,
      ),
    );
  }
}
