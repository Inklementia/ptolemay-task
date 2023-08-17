// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/router/navigator_service.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/safe_area/safe_area_b24.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/core/helpers/media_helper.dart';
import 'package:testtask/core/helpers/shared_preference_helper.dart';

import '../../text/text18/text_18_semi_bold.dart';

class MyBaseSheet extends StatelessWidget {
  //! NOT Scrollable

  final List<Widget> children;
  final String? title;

  const MyBaseSheet({
    super.key,
    required this.children,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final bottom = MediaHelper.keybord(context);
    final isKeyboardVisible = bottom != 0;

    return DraggableScrollableSheet(
      expand: false,
      minChildSize: 0.3,
      initialChildSize: 1,
      builder: (_, scrollController) {
        return Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: sl<NavigatorService>().pop,
                    behavior: HitTestBehavior.opaque,
                  ),
                ),
                MyContainer(
                  color: (MySPHelper.isDark ?? false)
                      ? MyColors.blackVariant
                      : MyColors.white,
                  borderRadius: MyBorderRadius.topRounded24,
                  child: ListView(
                    shrinkWrap: true,
                    padding: MyEdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: 8),
                      MyIcon(
                        width: 32,
                        height: 6,
                        icon: MyIcons.scrollElement,
                      ),
                      const SizedBox(height: 16),
                      if (title != null) ...[
                        MyText18s(
                          title!,
                          color: MyColors.neutral,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                      ],
                      ...children,
                      isKeyboardVisible
                          ? SizedBox(height: bottom)
                          : const EmptyContainer(),
                      const MySafeAreaB24(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
