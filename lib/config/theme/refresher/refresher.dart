// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:testtask/config/values/colors.dart';

class MyRefresher extends StatelessWidget {
  //

  final Widget child;
  final void Function() onRefresh;

  MyRefresher({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  final controller = RefreshController();

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      onRefresh: () => {
        onRefresh(),
        controller.refreshCompleted(),
      },
      header: const MaterialClassicHeader(
        color: MyColors.tertiary,
      ),
      controller: controller,
      child: child,
    );
  }
}
