// Flutter imports:
import 'package:flutter/material.dart';

import 'package:testtask/config/theme/container/container.dart';

class PrimaryCardStatus extends StatelessWidget {
  //
  final Color color;

  const PrimaryCardStatus({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: MyContainer(
        width: 9,
        height: 9,
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
