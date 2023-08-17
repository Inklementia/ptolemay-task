// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/enums/button_color_enum.dart';
import 'package:testtask/config/theme/inkwell/inkwell.dart';
import 'package:testtask/config/theme/progress_indicator/progress_indicator.dart';
import 'package:testtask/config/theme/text/text14/text_14_medium.dart';
import 'package:testtask/config/theme/text/text16/text_16_medium.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/durations.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyButton extends StatelessWidget {
  //
  final String label;
  final MyButtonColor buttonColor;

  final void Function()? onTap;
  final void Function()? onLongPress;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final bool isEnabled;
  final bool isLoading;
  final bool hasBorder;
  final bool isSmall;

  const MyButton.primary({
    super.key,
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.margin = MyEdgeInsets.zero,
    this.padding = MyEdgeInsets.h32v16,
    //
    this.isEnabled = true,
    this.isLoading = false,
    this.hasBorder = false,
    this.isSmall = false,
  }) : buttonColor = MyButtonColor.primary;

  const MyButton.secondary({
    super.key,
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = MyEdgeInsets.h32v16,
    this.margin = MyEdgeInsets.zero,
    //
    this.isLoading = false,
    this.isEnabled = true,
    this.hasBorder = false,
    this.isSmall = false,
  }) : buttonColor = MyButtonColor.secondary;

  const MyButton.neutral({
    super.key,
    required this.label,
    required this.onTap,
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    //
    this.padding = MyEdgeInsets.h32v16,
    this.margin = MyEdgeInsets.zero,
    //
    this.isLoading = false,
    this.isEnabled = true,
    this.hasBorder = false,
    this.isSmall = false,
  }) : buttonColor = MyButtonColor.neutral;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: MyInkWell(
        margin: margin,
        padding: padding,
        borderRadius: MyBorderRadius.allRounded10,
        border: hasBorder
            ? Border.all(
                color: buttonColor.textColor,
                width: 1,
              )
            : null,
        onTap: isEnabled && !isLoading ? onTap : null,
        color: isEnabled || isLoading
            ? buttonColor.color
            : buttonColor.disabledColor,
        child: Stack(
          children: [
            if (!isLoading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconLeft != null) ...[
                    iconLeft!,
                    const SizedBox(width: 8),
                  ],
                  isSmall
                      ? MyText14m(
                          label,
                          isOverflow: true,
                          color: buttonColor.textColor,
                        )
                      : MyText16m(
                          label,
                          isOverflow: true,
                          color: buttonColor.textColor,
                        ),
                  if (iconRight != null) ...[
                    const SizedBox(width: 8),
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
