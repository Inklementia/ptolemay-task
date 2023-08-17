// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/box_shadows.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class TopRoundedContainer extends StatelessWidget {
  //
  final Widget child;

  final EdgeInsetsGeometry padding;

  const TopRoundedContainer({
    super.key,
    required this.child,
    this.padding = MyEdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      padding: padding,
      color: MyColors.white,
      boxShadow: MyBoxShadows.sliver,
      borderRadius: MyBorderRadius.topRounded16,
      child: child,
    );
  }
}
