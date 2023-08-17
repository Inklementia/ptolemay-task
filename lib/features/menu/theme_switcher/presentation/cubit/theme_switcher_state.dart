part of 'theme_switcher_cubit.dart';

@freezed
class ThemeSwitcherState with _$ThemeSwitcherState {
  const factory ThemeSwitcherState({
    required bool isDark,
  }) = _ThemeSwitcherState;

  factory ThemeSwitcherState.initial() => ThemeSwitcherState(
        isDark: MySPHelper.isDark ?? false,
      );
}
