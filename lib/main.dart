// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:testtask/app.dart';
import 'package:testtask/core/helpers/formatters/date_formatter.dart';
import 'package:testtask/core/helpers/shared_preference_helper.dart';

// Project imports:
import 'config/values/system_ui_overlay_styles.dart';
import 'core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(MySystemUiOverlayStyle.splash);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  MyDateFormatter.init();

  await MySPHelper.init();

  configureDependencies();

  runApp(MyApp());
}
