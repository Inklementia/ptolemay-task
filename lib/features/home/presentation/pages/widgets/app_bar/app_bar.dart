// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/config/enums/menu_enum.dart';
import 'package:testtask/config/theme/app_bar/app_bar.dart';
import 'package:testtask/core/helpers/media_helper.dart';
import 'package:testtask/features/home/presentation/cubit/home_cubit.dart';
import 'package:testtask/features/home/presentation/cubit/home_state.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  //
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return MyAppBar(
          title: cubit.list[state.currentIndex].title,
          canPop: false,
        );
      },
    );
  }

  @override
  Size get preferredSize => MediaHelper.appBarSize!;
}
