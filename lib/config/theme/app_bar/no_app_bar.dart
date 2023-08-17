// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/system_ui_overlay_styles.dart';
import 'package:testtask/core/helpers/media_helper.dart';

class MyNoAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  final bool isLight;
  final Color backgroundColor;

  const MyNoAppBar({
    super.key,
    this.isLight = false,
    this.backgroundColor = MyColors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 0,
      backgroundColor: backgroundColor,
      systemOverlayStyle: isLight
          ? MySystemUiOverlayStyle.lightNavBar
          : MySystemUiOverlayStyle.darkNavBar,
    );
  }

  @override
  Size get preferredSize => Size(MediaHelper.width, 0);
}
