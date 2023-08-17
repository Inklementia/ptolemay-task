// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/card/primary_card/header.dart';
import 'package:testtask/config/theme/inkwell/inkwell.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class PrimaryCard extends StatelessWidget {
  //

  final Widget header;
  final Widget footer;
  final Widget content;

  final Color color;
  final EdgeInsets padding;
  final EdgeInsets margin;

  final bool isEnabled;

  final void Function() onTap;

  const PrimaryCard({
    super.key,
    required this.header,
    required this.footer,
    required this.content,
    required this.color,
    required this.onTap,
    required this.isEnabled,
    this.padding = MyEdgeInsets.all20,
    this.margin = MyEdgeInsets.top12,
  });

  @override
  Widget build(BuildContext context) {
    return MyInkWell(
      onTap: onTap,
      margin: margin,
      padding: padding,
      color: MyColors.white,
      borderRadius: MyBorderRadius.allRounded16,
      border: Border.all(color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryCardHeader(
            header: header,
            color: color,
            isEnabled: isEnabled,
          ),
          content,
          footer,
        ],
      ),
    );
  }
}
