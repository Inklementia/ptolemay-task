// Flutter imports:
import 'package:flutter/material.dart';

import 'package:testtask/config/theme/card/primary_card/status.dart';
import 'package:testtask/config/values/colors.dart';

class PrimaryCardHeader extends StatelessWidget {
  //
  final Widget header;
  final Color color;
  final bool isEnabled;

  const PrimaryCardHeader({
    super.key,
    required this.header,
    required this.color,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: header),
        const SizedBox(width: 12),
        PrimaryCardStatus(
          color: isEnabled ? color : MyColors.neutral,
        ),
      ],
    );
  }
}
