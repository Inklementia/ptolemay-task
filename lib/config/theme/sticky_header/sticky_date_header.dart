// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/text/text14/text_14_semi_bold.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';
import 'package:testtask/core/helpers/formatters/date_formatter.dart';

class StickyDateHeader extends StatelessWidget {
  //
  final DateTime date;
  final Widget child;

  const StickyDateHeader({
    super.key,
    required this.date,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
      content: child,
      header: MyContainer(
        color: MyColors.white,
        padding: MyEdgeInsets.h16v8,
        alignment: Alignment.centerLeft,
        child: MyText14s(
          MyDateFormatter.fdMMMMy(date),
          color: MyColors.neutral,
        ),
      ),
    );
  }
}
