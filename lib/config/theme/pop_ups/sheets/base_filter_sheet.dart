// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/button/button.dart';
import 'package:testtask/config/theme/container/bottom_button_container.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/theme/pop_ups/sheets/base_long_sheet.dart';
import 'package:testtask/config/values/strings.dart';

class MyBaseFilterSheet extends StatelessWidget {
  //
  final List<Widget> children;

  final void Function()? onApply;
  final void Function()? onClear;

  final double minChildSize;
  final double initialChildSize;

  const MyBaseFilterSheet({
    super.key,
    required this.children,
    this.onApply,
    this.onClear,
    this.minChildSize = 0.5,
    this.initialChildSize = 0.95,
  });

  @override
  Widget build(BuildContext context) {
    return MyBaseLongSheet(
      padding: null,
      minChildSize: minChildSize,
      initialChildSize: initialChildSize,
      title: MyStrings.filter,
      bottomChild: onApply == null || onClear == null
          ? const EmptyContainer()
          : BottomButtonContainer(
              child: Row(
                children: [
                  Expanded(
                    child: MyButton.secondary(
                      onTap: onClear,
                      label: MyStrings.clear,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: MyButton.primary(
                      onTap: onApply,
                      label: MyStrings.apply,
                    ),
                  ),
                ],
              ),
            ),
      children: [
        ...children,
        const SizedBox(height: 84),
      ],
    );
  }
}
