// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Package imports:
import 'package:testtask/config/router/navigator_service.dart';
import 'package:testtask/config/values/system_ui_overlay_styles.dart';
import 'package:testtask/features/menu/theme_switcher/presentation/cubit/theme_switcher_cubit.dart';

// Project imports:
import 'config/theme/scroll_behavior.dart';
import 'config/theme/theme.dart';
import 'config/values/strings.dart';
import 'core/di/service_locator.dart';
import 'core/helpers/media_helper.dart';

class MyApp extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final appRouter = sl<NavigatorService>().router;

    return BlocProvider(
      create: (context) => ThemeSwitcherCubit(),
      child: BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
        builder: (context, state) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: state.isDark
                ? MySystemUiOverlayStyle.darkNavBar
                : MySystemUiOverlayStyle.lightNavBar,
            child: MaterialApp.router(
              themeMode: ThemeMode.light,
              theme: state.isDark ? MyTheme.darkTheme : MyTheme.lightTheme,
              darkTheme: MyTheme.darkTheme,
              builder: builder,
              routerConfig: appRouter.config(),
              debugShowCheckedModeBanner: false,
              onGenerateTitle: (_) => MyStrings.appName,
            ),
          );
        },
      ),
    );
  }

  Widget builder(context, child) {
    MediaHelper.init(context);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: ScrollConfiguration(
        behavior: MyScrollBehavior(),
        child: child,
      ),
    );
  }
}
