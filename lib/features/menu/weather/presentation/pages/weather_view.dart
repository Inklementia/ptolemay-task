import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:testtask/config/router/navigator_service.dart';
import 'package:testtask/core/di/service_locator.dart';
import 'package:testtask/core/helpers/permission_helper.dart';
import 'package:testtask/features/menu/weather/presentation/pages/states/nopermission_state.dart';
import 'package:testtask/features/menu/weather/presentation/pages/widgets/content.dart';
import 'package:testtask/features/permission_sheet/permission_sheet.dart';

class WeatherView extends StatefulWidget {
  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> with WidgetsBindingObserver {
  //
  late bool? isGranted = false;
  void updateState() => {if (mounted) setState(() {})};

//
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    addPostFrameCallback(() async {
      checkForLocationPermissions();
    });

    super.initState();
  }

  Future<void> checkForLocationPermissions() async {
    isGranted = await MyPermissionHelper.check(Permission.locationWhenInUse);

    if (isGranted != null && isGranted!) {
      updateState();
    } else {
      requestPermission();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) checkForLocationPermissions();
  }

  void requestPermission() async {
    await sl<NavigatorService>().showMyModalBottomSheet(
      context: context,
      sheet: PermissionSheet.location(),
    );

    checkForLocationPermissions();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isGranted != null && isGranted!
        ? WeatherContent()
        : WeatherNoPermissionState(onRetry: requestPermission);
  }
}
