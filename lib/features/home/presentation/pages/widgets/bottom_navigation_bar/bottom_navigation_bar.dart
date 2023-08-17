// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:testtask/config/theme/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/features/home/presentation/cubit/home_cubit.dart';
import 'package:testtask/features/home/presentation/cubit/home_state.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  //
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return KeyboardVisibilityBuilder(
      builder: (_, isKeyBoardVisible) {
        if (isKeyBoardVisible) return const EmptyContainer();

        return BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return MyBottomNavigationBar(
              list: cubit.list,
              onTap: cubit.changePage,
              currentIndex: state.currentIndex,
            );
          },
        );
      },
    );
  }
}
