// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:permission_handler/permission_handler.dart';

// Project imports:
import 'package:testtask/config/assets/image_constants.dart';
import 'package:testtask/config/router/navigator_service.dart';
import 'package:testtask/config/theme/button/button.dart';
import 'package:testtask/config/theme/pop_ups/sheets/base_sheet.dart';
import 'package:testtask/config/theme/text/text16/text_16.dart';
import 'package:testtask/config/theme/text/text18/text_18_semi_bold.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';
import 'package:testtask/config/values/strings.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/core/helpers/permission_helper.dart';

class PermissionSheet extends StatelessWidget {
  //
  final String img;
  final String title;
  final String desc;

  final Permission permission;

  PermissionSheet({
    required this.img,
    required this.title,
    required this.desc,
    required this.permission,
  });

  //

  factory PermissionSheet.location() => PermissionSheet(
        img: MyImages.error,
        title: 'Location permission required',
        desc: 'Please allow access to your location to continue',
        permission: Permission.locationWhenInUse,
      );

  //

  @override
  Widget build(BuildContext context) {
    return MyBaseSheet(
      children: [
        SizedBox(height: 44),
        Image.asset(
          img,
          width: 90,
          height: 90,
        ),
        SizedBox(height: 24),
        Padding(
          padding: MyEdgeInsets.h24,
          child: MyText18s(
            title,
            maxLines: 2,
            isOverflow: false,
            color: MyColors.neutral,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: MyEdgeInsets.h24,
          child: MyText16(
            desc,
            maxLines: 5,
            color: MyColors.neutral,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 40),
        MyButton.primary(
          onTap: onTap,
          margin: MyEdgeInsets.h16,
          label: MyStrings.next,
        ),
      ],
    );
  }

  void onTap() async {
    MyPermissionHelper.request(permission);
    await sl<NavigatorService>().pop();
  }
}
