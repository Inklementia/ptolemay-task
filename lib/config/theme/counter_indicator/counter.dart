// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/theme/text/text11/text_11_semi_bold.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class Counter extends StatelessWidget {
  //
  final int counter;
  final bool isDashboard;

  const Counter({
    super.key,
    required this.counter,
    this.isDashboard = false,
  });

  @override
  Widget build(BuildContext context) {
    if (counter > 0) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: isDashboard ? 8 : 20,
          minWidth: isDashboard ? 8 : 20,
        ),
        child: isDashboard
            ? const MyContainer(
                borderRadius: MyBorderRadius.allRounded15,
                color: MyColors.primary,
              )
            : MyContainer(
                borderRadius: MyBorderRadius.allRounded15,
                color: MyColors.red,
                padding: MyEdgeInsets.all2,
                border: Border.all(color: MyColors.red),
                child: Center(
                  child: MyText11s(
                    counter < 99 ? counter.toString() : '99+',
                    color: MyColors.white,
                  ),
                ),
              ),
      );
    } else {
      return const EmptyContainer();
    }
  }
}
