// Dart imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:testtask/config/assets/image_constants.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/colors.dart';

class MyNetworkImage extends StatelessWidget {
  //
  final String imgUrl;

  final double? maxHeight;
  final double? width, height;
  final double? minWidth, minHeight;

  final BoxFit? fit;

  final BorderRadius borderRadius;

  final String? errorImage;

  final bool showBorder;

  MyNetworkImage.loader(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.errorImage,
    this.borderRadius = BorderRadius.zero,
    this.fit = BoxFit.contain,
    this.showBorder = false,
  }) : super(key: ValueKey(imgUrl));

  MyNetworkImage.profile(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.fit = BoxFit.cover,
    this.errorImage = MyImages.error,
    this.borderRadius = MyBorderRadius.allRounded8,
    this.showBorder = false,
  }) : super(key: ValueKey(imgUrl));

  MyNetworkImage.circle(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.fit = BoxFit.cover,
    this.errorImage = MyImages.error,
    this.borderRadius = MyBorderRadius.allRounded100,
    this.showBorder = false,
  }) : super(key: ValueKey(imgUrl));

  MyNetworkImage.photo(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.fit = BoxFit.cover,
    this.showBorder = false,
    this.errorImage = MyImages.error,
    this.borderRadius = MyBorderRadius.allRounded8,
  }) : super(key: ValueKey(imgUrl));

  MyNetworkImage.asset(
    this.imgUrl, {
    //
    this.width,
    this.height,
    //
    this.minWidth,
    this.minHeight,
    this.maxHeight,
    //
    this.fit = BoxFit.cover,
    this.showBorder = false,
    this.errorImage = MyImages.error,
    this.borderRadius = MyBorderRadius.allRounded8,
  }) : super(key: ValueKey(imgUrl));

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: MyContainer(
        constraints: BoxConstraints(
          maxHeight: maxHeight ?? double.infinity,
        ),
        border: showBorder ? Border.all(color: MyColors.neutralVariant1) : null,
        child: CachedNetworkImage(
          fit: fit,
          width: width,
          height: height,
          imageUrl: imgUrl,
          placeholder: (context, url, [_]) => getPlaceholder(),
          errorWidget: (context, url, [_]) => getErrorImage(),
        ),
      ),
    );
  }

  Widget getPlaceholder() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      direction: ShimmerDirection.ltr,
      child: Container(
        width: width ?? minWidth,
        height: height ?? minHeight,
        color: MyColors.shrimmer,
      ),
    );
  }

  Widget getErrorImage() {
    return errorImage != null
        ? Image.asset(
            errorImage!,
            width: width,
            height: height,
          )
        : getPlaceholder();
  }
}
