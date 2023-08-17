// Flutter imports:
import 'package:flutter/material.dart';

import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/values/strings.dart';
import 'package:testtask/features/menu/counter/presentation/counter_view.dart';
import 'package:testtask/features/menu/theme_switcher/presentation/pages/theme_switcher_view.dart';
import 'package:testtask/features/menu/weather/presentation/pages/weather_view.dart';

enum Menu {
  home,
  page1,
  page2,
  page3,
}

extension MenuExtension on Menu {
  //
  String get iconOn {
    switch (this) {
      case Menu.home:
        return MyIcons.homeOn;
      case Menu.page1:
        return MyIcons.pageOn;
      case Menu.page2:
        return MyIcons.pageOn;
      case Menu.page3:
        return MyIcons.pageOn;

      default:
        return MyIcons.homeOn;
    }
  }

  String get iconOff {
    switch (this) {
      case Menu.home:
        return MyIcons.homeOff;
      case Menu.page1:
        return MyIcons.pageOff;
      case Menu.page2:
        return MyIcons.pageOff;
      case Menu.page3:
        return MyIcons.pageOff;
      default:
        return MyIcons.homeOff;
    }
  }

  String get title {
    switch (this) {
      case Menu.home:
        return 'Weather';
      case Menu.page1:
        return 'Counter';
      case Menu.page2:
        return 'Theme';
      case Menu.page3:
        return MyStrings.page;
    }
  }

  Widget get viewWidget {
    switch (this) {
      case Menu.home:
        return WeatherView();
      case Menu.page1:
        return const CounterView();
      case Menu.page2:
        return const ThemeSwitcherView();
      case Menu.page3:
        return const EmptyContainer();
    }
  }
}
