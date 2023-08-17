// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/classes/action_option.dart';
import 'package:testtask/config/router/navigator_service.dart';
import 'package:testtask/config/theme/divider/divider.dart';
import 'package:testtask/config/theme/pop_ups/action_selector/widgets/action_selector_item.dart';
import 'package:testtask/config/theme/pop_ups/sheets/base_sheet.dart';
import 'package:testtask/config/values/strings.dart';
import 'package:testtask/core/di/service_locator.dart';

class ActionSelector extends StatelessWidget {
  //
  final List<ActionOption> actions;

  const ActionSelector({super.key, required this.actions});

  @override
  Widget build(BuildContext context) {
    return MyBaseSheet(
      title: MyStrings.chooseAction,
      children: [
        const MyDivider(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: actions.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final action = actions[index];

            return Column(
              children: [
                ActionSelectorItem(
                  model: action.type,
                  onTap: () async {
                    await sl<NavigatorService>().pop();
                    action.onTap();
                  },
                ),
                const MyDivider(),
              ],
            );
          },
        ),
      ],
    );
  }
}
