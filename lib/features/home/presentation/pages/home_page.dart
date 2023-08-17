// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/features/home/presentation/cubit/home_cubit.dart';
import 'package:testtask/features/home/presentation/pages/widgets/app_bar/app_bar.dart';
import 'package:testtask/features/home/presentation/pages/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:testtask/features/home/presentation/pages/widgets/content.dart';
import 'package:testtask/features/menu/counter/cubit/counter_cubit.dart';
import 'package:testtask/features/menu/weather/presentation/bloc/weather_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (context) => sl<HomeCubit>()),
        BlocProvider<CounterCubit>(create: (context) => sl<CounterCubit>()),
        BlocProvider<WeatherBloc>(create: (context) => sl<WeatherBloc>()),
      ],
      child: const Scaffold(
        appBar: HomeAppBar(),
        body: HomeContent(),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: HomeBottomNavigationBar(),
      ),
    );
  }
}
