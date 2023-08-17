// Flutter imports:
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  //
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  final bool hideOverflow;

  final AlignmentGeometry? alignment;

  final Gradient? gradient;
  final Color? color;
  final BoxShape shape;
  final BoxBorder? border;
  final DecorationImage? image;

  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;

  final BoxConstraints? constraints;

  final Widget? child;

  const MyContainer({
    super.key,
    //
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    this.hideOverflow = false,
    //
    this.gradient,
    this.color,
    this.image,
    this.shape = BoxShape.rectangle,
    this.border,
    this.boxShadow = const [],
    this.borderRadius,
    this.constraints,
    //
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      constraints: constraints,
      clipBehavior: hideOverflow ? Clip.hardEdge : Clip.none,
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        shape: shape,
        image: image,
        border: border,
        boxShadow: boxShadow,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
