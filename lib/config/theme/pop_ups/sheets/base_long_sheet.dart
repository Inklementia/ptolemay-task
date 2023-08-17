// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/theme/divider/divider.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/safe_area/safe_area_b16.dart';
import 'package:testtask/config/theme/text/text16/text_16_bold.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyBaseLongSheet extends StatelessWidget {
  //* Scrollable
  final String? title;
  final EdgeInsets? padding;
  final List<Widget> children;

  final Widget bottomChild;
  final bool fixedTitle;

  final double minChildSize;
  final double maxChildSize;
  final double initialChildSize;

  const MyBaseLongSheet({
    super.key,
    required this.children,
    this.title,
    this.fixedTitle = false,
    this.minChildSize = 0.5,
    this.maxChildSize = 0.95,
    this.initialChildSize = 0.5,
    this.padding = MyEdgeInsets.zero,
    this.bottomChild = const EmptyContainer(),
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      initialChildSize: initialChildSize,
      builder: (_, controller) => Stack(
        children: [
          ListView(
            padding: padding,
            controller: controller,
            physics: const ClampingScrollPhysics(),
            children: [
              if (!fixedTitle) ...[
                const SizedBox(height: 8),
                const MyIcon(
                  width: 40,
                  height: 5,
                  icon: MyIcons.scrollElement,
                ),
                const SizedBox(height: 16),
                if (title != null) ...[
                  MyText16b(
                    title!,
                    color: MyColors.secondary,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                ],
              ] else ...[
                const SizedBox(height: 72),
              ],
              ...children,
              const MySafeAreaB16(),
            ],
          ),
          if (title != null && fixedTitle) ...[
            Positioned(
              child: MyContainer(
                color: MyColors.white,
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: 8),
                    const MyIcon(
                      width: 40,
                      height: 5,
                      icon: MyIcons.scrollElement,
                    ),
                    const SizedBox(height: 16),
                    if (title != null) ...[
                      MyText16b(
                        title!,
                        color: MyColors.secondary,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      const MyDivider(),
                    ],
                  ],
                ),
              ),
            ),
          ],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomChild,
          ),
        ],
      ),
    );
  }
}
