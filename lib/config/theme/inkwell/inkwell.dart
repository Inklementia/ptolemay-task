// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyInkWell extends StatelessWidget {
  //
  final void Function()? onTap;
  final void Function()? onDoubleTap;

  final BorderRadius? borderRadius;
  final Border? border;

  final Color? color;

  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  final double? height;
  final double? width;

  final Widget child;

  const MyInkWell({
    super.key,
    required this.onTap,
    required this.child,
    this.color,
    this.boxShadow,
    this.gradient,
    this.onDoubleTap,
    this.borderRadius,
    this.height,
    this.width,
    this.border,
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      color: color,
      margin: margin,
      border: border,
      height: height,
      width: width,
      gradient: gradient,
      boxShadow: boxShadow,
      borderRadius: borderRadius,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          borderRadius: borderRadius,
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
