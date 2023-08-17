// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/router/navigator_service.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/text/text16/text_16_bold.dart';
import 'package:testtask/config/values/edge_insets.dart';
import 'package:testtask/config/values/system_ui_overlay_styles.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/core/helpers/media_helper.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool canPop;
  final String title;
  final List<Widget>? actions;

  final void Function()? onPop;

  const MyAppBar({
    super.key,
    required this.title,
    this.canPop = true,
    this.actions,
    this.onPop,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leadingWidth: 44,
      centerTitle: true,
      title: MyText16b(title),
      systemOverlayStyle: MySystemUiOverlayStyle.main,
      automaticallyImplyLeading: false,
      leading: canPop
          ? MyIcon(
              size: 28,
              padding: MyEdgeInsets.left16,
              icon: MyIcons.arrowLeftCircleFilled,
              onTap: onPop ?? sl<NavigatorService>().pop,
            )
          : const EmptyContainer(),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
