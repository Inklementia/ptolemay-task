// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/enums/action_type_enum.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/inkwell/inkwell.dart';
import 'package:testtask/config/theme/progress_indicator/progress_indicator.dart';
import 'package:testtask/config/theme/text/text14/text_14_semi_bold.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';

class ActionSelectorItem extends StatelessWidget {
  //
  final ActionType model;
  final Function() onTap;

  final bool enabled;
  final bool isLoading;

  const ActionSelectorItem({
    super.key,
    required this.model,
    required this.onTap,
    this.enabled = true,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return MyInkWell(
      onTap: enabled ? onTap : null,
      color: MyColors.white,
      padding: MyEdgeInsets.all16,
      child: Row(
        children: [
          MyIcon(
            size: 24,
            icon: model.icon,
            color: enabled ? model.iconColor : MyColors.primaryA50,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: MyText14s(
              model.title,
              color: enabled ? model.color : MyColors.primaryA50,
            ),
          ),
          if (isLoading) ...[
            const SizedBox(width: 8),
            const MyProgressIndicator(
              size: 12,
              strokeWidth: 3,
              color: MyColors.tertiary,
            )
          ],
        ],
      ),
    );
  }
}
