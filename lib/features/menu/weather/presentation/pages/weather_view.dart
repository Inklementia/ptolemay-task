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

class _WeatherViewState extends State<WeatherView> {
  //
  void updateState() => {if (mounted) setState(() {})};

  @override
  void initState() {
    addPostFrameCallback(() async {
      checkForLocationPermissions();
    });

    super.initState();
  }

  Future<void> checkForLocationPermissions() async {
    final isGranted =
        MyPermissionHelper.permissions[Permission.locationWhenInUse]!;

    if (!isGranted) {
      requestPermission();
    }
  }

  void requestPermission() async {
    await sl<NavigatorService>().showMyModalBottomSheet(
      sheet: PermissionSheet.location(),
    );
    updateState();
  }

  @override
  Widget build(BuildContext context) {
    return MyPermissionHelper.permissions[Permission.locationWhenInUse]!
        ? WeatherContent()
        : WeatherNoPermissionState(onRetry: requestPermission);
  }
}
