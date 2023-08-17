// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'colors.dart';

class MySystemUiOverlayStyle {
  MySystemUiOverlayStyle._();

  static const splash = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    //
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.secondary,
    systemNavigationBarDividerColor: MyColors.secondary,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const main = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    //
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.white,
    systemNavigationBarDividerColor: MyColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static const darkStatusBar = SystemUiOverlayStyle(
    systemStatusBarContrastEnforced: false,
    statusBarColor: MyColors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  );

  static const lightNavBar = SystemUiOverlayStyle(
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.white,
    systemNavigationBarDividerColor: MyColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static const darkNavBar = SystemUiOverlayStyle(
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.black,
    systemNavigationBarDividerColor: MyColors.black,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const greyNavBar = SystemUiOverlayStyle(
    //
    systemNavigationBarContrastEnforced: false,
    systemNavigationBarColor: MyColors.neutralVariant1,
    systemNavigationBarDividerColor: MyColors.neutralVariant1,
    systemNavigationBarIconBrightness: Brightness.dark,
  );
}
