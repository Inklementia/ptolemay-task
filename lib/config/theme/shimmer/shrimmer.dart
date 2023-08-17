// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shimmer/shimmer.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/colors.dart';

class MyShimmer extends StatelessWidget {
  //
  final double? height;
  final bool isOverflow;
  final BorderRadius borderRadius;

  const MyShimmer({
    super.key,
    this.height = 20,
    this.isOverflow = false,
    this.borderRadius = MyBorderRadius.allRounded16,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        direction: ShimmerDirection.ltr,
        child: MyContainer(
          height: height,
          color: MyColors.neutral,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
