import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/features/menu/weather/presentation/bloc/weather_bloc.dart';
import 'package:testtask/features/menu/weather/presentation/pages/states/error_state.dart';
import 'package:testtask/features/menu/weather/presentation/pages/states/loaded_state.dart';
import 'package:testtask/features/menu/weather/presentation/pages/states/loading_state.dart';

class WeatherContent extends StatelessWidget {
  const WeatherContent({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WeatherBloc>();
    bloc.add(WeatherEvent.getLocation());
    return BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
      return state.when(
          initial: () => EmptyContainer(),
          loadingCountry: () =>
              WeatherLoadingState(loadingText: 'loading country ...'),
          loadedCountry: (country) =>
              WeatherLoadingState(loadingText: 'loading weather ...'),
          loading: () =>
              WeatherLoadingState(loadingText: 'loading weather ...'),
          loaded: (weather) => WeatherLoadedState(weather: weather),
          error: (errorMessage) => WeatherErrorState(errorText: errorMessage));
    });
  }
}
