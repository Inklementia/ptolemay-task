// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/values/colors.dart';

class MyLeftBorderContainer extends StatelessWidget {
  //
  final List<Widget> children;
  final bool enabled;
  final Color mainColor;
  final Color secondaryColor;

  const MyLeftBorderContainer({
    super.key,
    required this.children,
    this.enabled = true,
    this.mainColor = MyColors.tertiary,
    this.secondaryColor = MyColors.neutral,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      border: Border(
        left: BorderSide(
          width: 2,
          color: enabled ? mainColor : secondaryColor,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
