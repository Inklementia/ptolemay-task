// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testtask/config/router/app_router.dart';
import 'package:testtask/config/router/navigator_service.dart';
import 'package:testtask/config/theme/app_bar/no_app_bar.dart';
import 'package:testtask/config/theme/text/text14/text_14.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/strings.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/core/helpers/permission_helper.dart';
import 'package:testtask/features/menu/theme_switcher/presentation/cubit/theme_switcher_cubit.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static final BehaviorSubject<bool> _isOpen = BehaviorSubject.seeded(false);
  static BehaviorSubject<bool> get isOpen$ => _isOpen;
  static bool get isOpen => _isOpen.value;
  void closeSink() => _isOpen.close();

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //
  late bool hasLocationPermission =
      MyPermissionHelper.permissions[Permission.locationWhenInUse]!;

  @override
  void initState() {
    SplashPage._isOpen.value = true;
    sl<NavigatorService>().push(HomeRoute());

    super.initState();
  }

  @override
  void dispose() {
    SplashPage._isOpen.value = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.isDark ? MyColors.black : MyColors.white,
          appBar: const MyNoAppBar(isLight: false),
          body: Center(
            child: MyText14(
              MyStrings.loading,
              color: MyColors.secondary,
            ),
          ),
        );
      },
    );
  }
}
