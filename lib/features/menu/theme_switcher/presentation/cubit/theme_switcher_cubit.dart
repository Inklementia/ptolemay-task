import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:testtask/core/helpers/shared_preference_helper.dart';

part 'theme_switcher_state.dart';
part 'theme_switcher_cubit.freezed.dart';

@injectable
class ThemeSwitcherCubit extends Cubit<ThemeSwitcherState> {
  ThemeSwitcherCubit() : super(ThemeSwitcherState.initial());

  void changeTheme() {
    final isDark = !state.isDark;
    MySPHelper.isDark = isDark;

    emit(state.copyWith(isDark: isDark));
  }
}
