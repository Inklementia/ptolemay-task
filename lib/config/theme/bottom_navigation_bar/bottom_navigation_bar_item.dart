// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/enums/menu_enum.dart';
import 'package:testtask/config/theme/counter_indicator/counter_indicator.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/text/text11/text_11_semi_bold.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/durations.dart';
import 'package:testtask/config/values/edge_insets.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  //
  final Menu model;
  final bool isSelected;

  final void Function() onTap;

  final Stream<int>? badgeStream;
  final int? badgeInitData;

  const MyBottomNavigationBarItem({
    super.key,
    required this.model,
    required this.isSelected,
    required this.onTap,
    //
    this.badgeStream,
    this.badgeInitData,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms250,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              MyIcon(
                size: 24,
                key: ValueKey(isSelected),
                padding: MyEdgeInsets.all4,
                color: isSelected ? MyColors.secondary : MyColors.neutral,
                icon: isSelected ? model.iconOn : model.iconOff,
              ),
              if (badgeStream != null && badgeInitData != null)
                Positioned(
                  top: 0,
                  right: 0,
                  child: CounterIndicator(
                    stream: badgeStream!,
                    counter: badgeInitData!,
                  ),
                ),
            ],
          ),
          MyText11s(
            model.title,
            color: isSelected ? MyColors.secondary : MyColors.neutral,
          ),
        ],
      ),
    );
  }
}
