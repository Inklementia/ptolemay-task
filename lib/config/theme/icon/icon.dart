// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyIcon extends StatelessWidget {
  //

  final String icon;

  final double size;
  final double? width;
  final double? height;

  final Color? color;

  final Function()? onTap;
  final EdgeInsetsGeometry padding;

  const MyIcon({
    super.key,
    required this.icon,
    this.size = 24,
    this.width,
    this.height,
    this.color,
    this.onTap,
    this.padding = MyEdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: padding,
        child: color != null
            ? SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  color ?? Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
                width: width ?? size,
                height: height ?? size,
                fit: BoxFit.scaleDown,
              )
            : SvgPicture.asset(
                icon,
                width: width ?? size,
                height: height ?? size,
                fit: BoxFit.scaleDown,
              ),
      ),
    );
  }
}
