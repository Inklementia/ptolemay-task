part of 'counter_cubit.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required int counter,
  }) = _CounterState;

  factory CounterState.initial() => CounterState(
        counter: 0,
      );
}
