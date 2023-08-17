// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:injectable/injectable.dart';
import 'package:testtask/config/enums/alert_type_enum.dart';
import 'package:testtask/config/theme/pop_ups/alert/alert.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/durations.dart';
import 'package:testtask/config/values/strings.dart';

import 'app_router.dart';

@singleton
class NavigatorService {
  //

  final router = AppRouter();

  //

  void clearFocus(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  //

  Future<dynamic> pushNamed<T>(String route) {
    return router.pushNamed<T>(route);
  }

  Future<dynamic> push<T>(PageRouteInfo route) {
    return router.push<T>(route);
  }

  Future<dynamic> replaceNamed<T>(String routeName) {
    return router.replaceNamed<T>(routeName);
  }

  Future<dynamic> replace<T>(PageRouteInfo route) {
    return router.replace<T>(route);
  }

  //pushNamedAndRemoveUntil
  Future<dynamic> navigate(PageRouteInfo route) {
    return router.navigate(route);
  }

  Future<dynamic> navigateNamed(String routeName) {
    return router.navigateNamed(routeName);
  }

  Future<dynamic> pushAll(List<PageRouteInfo> routes) {
    return router.pushAll(routes);
  }

  Future<dynamic> replaceAll(List<PageRouteInfo> routes) {
    return router.replaceAll(routes);
  }

  //pop
  Future<dynamic> pop<T>() {
    return router.pop<T>();
  }

  void popUntil(String routeName) {
    router.popUntil((route) => route.settings.name == routeName);
  }

  bool canPop([result]) {
    return router.canPop();
  }

  Future showMyModalBottomSheet({
    required BuildContext context,
    required Widget sheet,
    bool isScrollable = false,
  }) {
    return showModalBottomSheet(
      context: context,
      builder: (_) => sheet,
      isScrollControlled: true,
      clipBehavior: Clip.antiAlias, // default is Clip.none
      shape: isScrollable ? MyBorderRadius.popUpRounded : null,
      backgroundColor: isScrollable ? MyColors.white : MyColors.transparent,
    );
  }

  void showAlert(
    BuildContext context,
    String message, {
    String? title,
    String? buttonText,
    void Function()? onTap,
    AlertType type = AlertType.error,
  }) {
    showFlash(
      context: context,
      duration: MyDurations.s5,
      builder: (context, controller) {
        return Flash(
          controller: controller,
          position: FlashPosition.bottom,
          child: MyAlert(
            onTap: onTap,
            icon: type.icon,
            color: type.color,
            description: message,
            title: title ?? type.title,
            onClose: () => controller.dismiss(),
            buttonText: buttonText ?? MyStrings.next,
          ),
        );
      },
    );
  }
}

void addPostFrameCallback(Function callback) {
  SchedulerBinding.instance.addPostFrameCallback((_) => callback());
}
