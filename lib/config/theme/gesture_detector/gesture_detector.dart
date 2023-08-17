// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyGestureDetector extends StatelessWidget {
  //
  final Widget child;
  final EdgeInsets padding;

  final void Function()? onTap;
  final HitTestBehavior behavior;

  const MyGestureDetector({
    super.key,
    required this.child,
    required this.onTap,
    this.padding = MyEdgeInsets.zero,
    this.behavior = HitTestBehavior.translucent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: behavior,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
