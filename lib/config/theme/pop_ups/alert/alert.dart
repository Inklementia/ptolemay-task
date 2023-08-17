// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/text/text14/text_14.dart';
import 'package:testtask/config/theme/text/text16/text_16.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyAlert extends StatelessWidget {
  //
  final String icon;
  final String title;
  final String description;

  final Color color;

  final Function() onClose;
  //
  final Function()? onTap;
  final String? buttonText;

  const MyAlert({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    //
    required this.color,
    //
    required this.onClose,
    this.onTap,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: MyEdgeInsets.bottom32,
      child: MyContainer(
        color: MyColors.white,
        margin: MyEdgeInsets.h16,
        padding: MyEdgeInsets.all16,
        border: Border.all(color: color),
        borderRadius: MyBorderRadius.allRounded10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyIcon(
              size: 24,
              icon: icon,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText16(
                    title,
                  ),
                  const SizedBox(height: 8),
                  MyText14(
                    description,
                    isOverflow: false,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            MyIcon(
              onTap: onClose,
              icon: MyIcons.close,
            ),
          ],
        ),
      ),
    );
  }
}
