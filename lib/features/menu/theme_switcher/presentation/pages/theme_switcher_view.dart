import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/config/theme/text/text12/text_12.dart';
import 'package:testtask/features/menu/theme_switcher/presentation/cubit/theme_switcher_cubit.dart';

class ThemeSwitcherView extends StatelessWidget {
  const ThemeSwitcherView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText12('Switch theme'),
              Switch(
                value: state.isDark,
                onChanged: (value) =>
                    context.read<ThemeSwitcherCubit>().changeTheme(),
              ),
            ],
          ),
        );
      },
    );
  }
}
