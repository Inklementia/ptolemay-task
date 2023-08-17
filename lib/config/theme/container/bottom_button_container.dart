// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/values/box_shadows.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class BottomButtonContainer extends StatelessWidget {
  //
  final Widget child;
  final bool useBorder;

  const BottomButtonContainer({
    super.key,
    required this.child,
    this.useBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      color: MyColors.white,
      padding: MyEdgeInsets.all16,
      boxShadow: useBorder ? MyBoxShadows.none : MyBoxShadows.bottom,
      border: Border(
        top: BorderSide(
          color: useBorder ? MyColors.neutral : MyColors.transparent,
          width: useBorder ? 1 : 0,
        ),
      ),
      child: SafeArea(top: false, child: child),
    );
  }
}
