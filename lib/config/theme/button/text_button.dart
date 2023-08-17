// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/enums/button_color_enum.dart';
import 'package:testtask/config/theme/gesture_detector/gesture_detector.dart';
import 'package:testtask/config/theme/progress_indicator/progress_indicator.dart';
import 'package:testtask/config/theme/text/text16/text_16_medium.dart';
import 'package:testtask/config/values/durations.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyTextButton extends StatelessWidget {
  //
  final String? label;
  final MyButtonColor buttonColor;

  final void Function()? onTap;
  final void Function()? onLongPress;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final bool enable;
  final bool isLoading;

  const MyTextButton({
    super.key,
    this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.zero,
    //
    this.enable = true,
    this.isLoading = false,
  }) : buttonColor = MyButtonColor.secondary;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: MyGestureDetector(
        padding: padding,
        onTap: enable && !isLoading ? onTap : null,
        child: Stack(
          children: [
            if (!isLoading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconLeft != null) ...[
                    iconLeft!,
                    if (label != null) const SizedBox(width: 8),
                  ],
                  if (label != null) ...[
                    MyText16m(
                      label!,
                      isOverflow: true,
                      color: buttonColor.textColor,
                      height: 19,
                    ),
                  ],
                  if (iconRight != null) ...[
                    if (label != null) const SizedBox(width: 8),
                    iconRight!,
                  ],
                ],
              )
            else
              Center(
                child: MyProgressIndicator(
                  size: 20,
                  color: buttonColor.textColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
