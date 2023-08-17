// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/theme/divider/divider.dart';
import 'package:testtask/config/theme/gesture_detector/gesture_detector.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/progress_indicator/progress_indicator.dart';
import 'package:testtask/config/theme/safe_area/safe_area_b16.dart';
import 'package:testtask/config/theme/text/text14/text_14_medium.dart';
import 'package:testtask/config/theme/text/text16/text_16_medium.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';
import 'package:testtask/config/values/strings.dart';
import 'package:testtask/core/helpers/media_helper.dart';

class MyBaseSelectorSheet extends StatelessWidget {
  //* Scrollable
  final String? title;
  final List<Widget> children;
  final List<Widget> slivers;

  final Widget bottomChild;

  final void Function()? onSave;
  final void Function()? onCancel;

  final bool isLoading;

  final double minChildSize;
  final double maxChildSize;
  final double initialChildSize;

  const MyBaseSelectorSheet({
    super.key,
    this.title,
    required this.children,
    this.slivers = const [],
    this.bottomChild = const EmptyContainer(),
    //
    this.onSave,
    this.onCancel,
    //
    this.isLoading = false,
    //
    this.minChildSize = 0.5,
    this.maxChildSize = 0.95,
    this.initialChildSize = 0.95,
  });

  //
  @override
  Widget build(BuildContext context) {
    final bottom = MediaHelper.keybord(context);
    final isKeyboardVisible = bottom != 0;

    return DraggableScrollableSheet(
      expand: false,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      initialChildSize: isKeyboardVisible ? 0.95 : initialChildSize,
      builder: (_, controller) => Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    if (title != null) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (onCancel != null)
                            MyGestureDetector(
                              onTap: onCancel,
                              padding: MyEdgeInsets.all16,
                              child: MyText14m(
                                MyStrings.cancel,
                                color: MyColors.neutral,
                              ),
                            ),
                          Expanded(
                            child: Padding(
                              padding: MyEdgeInsets.v16,
                              child: MyText16m(
                                title!,
                                height: 20,
                                color: MyColors.neutral,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          if (onSave != null)
                            MyGestureDetector(
                              onTap: onSave,
                              padding: MyEdgeInsets.all16,
                              child: MyText14m(
                                MyStrings.save,
                                color: MyColors.primary,
                              ),
                            ),
                        ],
                      ),
                      const MyDivider(),
                    ] else ...[
                      const SizedBox(height: 8),
                      MyIcon(
                        width: 32,
                        height: 6,
                        icon: MyIcons.scrollElement,
                      ),
                      const SizedBox(height: 16),
                    ],
                    Expanded(
                      child: Stack(
                        children: [
                          CustomScrollView(
                            controller: controller,
                            slivers: [
                              ...slivers,
                              SliverList(
                                delegate: SliverChildListDelegate([
                                  ...children,
                                  const MySafeAreaB16(),
                                ]),
                              )
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: bottomChild,
                          ),
                          if (isLoading)
                            const MyContainer(
                              color: MyColors.blackA30,
                              child: Center(child: MyProgressIndicator()),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          isKeyboardVisible ? SizedBox(height: bottom) : const EmptyContainer(),
        ],
      ),
    );
  }
}
