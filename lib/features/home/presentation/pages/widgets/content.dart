// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/config/enums/menu_enum.dart';
import 'package:testtask/config/theme/indexed_stack/indexed_stack.dart';

// Project imports:
import 'package:testtask/features/home/presentation/cubit/home_cubit.dart';
import 'package:testtask/features/home/presentation/cubit/home_state.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return MyIndexedStack(
          index: state.currentIndex,
          children: cubit.list.map((i) => i.viewWidget).toList(),
        );
      },
    );
  }
}
