import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/config/theme/button/button.dart';
import 'package:testtask/config/theme/text/text24/text_24_semi_bold.dart';
import 'package:testtask/config/values/spaces.dart';
import 'package:testtask/features/menu/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText24s('${state.counter}'),
            MySpaces.v24,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton.secondary(
                  label: 'Add',
                  onTap: cubit.increment,
                  isSmall: true,
                ),
                MySpaces.h16,
                MyButton.primary(
                  label: 'Substract',
                  onTap: cubit.decrement,
                  isSmall: true,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
