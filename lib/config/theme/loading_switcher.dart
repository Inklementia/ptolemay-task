// Flutter imports:
import 'package:flutter/material.dart';
import 'package:testtask/config/values/durations.dart';

class LoadingSwitcher extends StatelessWidget {
  //
  final Widget loadingState;
  final Widget idleState;
  final bool isLoading;

  const LoadingSwitcher({
    super.key,
    required this.loadingState,
    required this.idleState,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: MyDurations.ms200,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: isLoading ? loadingState : idleState,
    );
  }
}
