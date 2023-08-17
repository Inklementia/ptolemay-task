import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/features/menu/theme_switcher/presentation/cubit/theme_switcher_cubit.dart';

part 'counter_state.dart';
part 'counter_cubit.freezed.dart';

@injectable
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment() {
    final isDark = sl<ThemeSwitcherCubit>().state.isDark;
    final counter = isDark
        ? (state.counter < 9 ? state.counter + 2 : (state.counter < 10 ? 1 : 2))
        : (state.counter < 10 ? state.counter + 1 : 1);

    emit(state.copyWith(counter: counter));
  }

  void decrement() {
    final isDark = sl<ThemeSwitcherCubit>().state.isDark;
    final counter = isDark
        ? (state.counter > 1 ? state.counter - 2 : (state.counter > 0 ? 9 : 8))
        : (state.counter > 1 ? state.counter - 1 : 10);
    emit(state.copyWith(counter: counter));
  }
}
