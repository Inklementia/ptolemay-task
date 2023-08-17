// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';

class MyPermissionHelper {
  MyPermissionHelper._();
  //

  static const _list = [
    Permission.locationWhenInUse,
  ];

  static final _initPermissions = {for (Permission item in _list) item: false};

  static final _permissions =
      BehaviorSubject<Map<Permission, bool>>.seeded(_initPermissions);
  static BehaviorSubject<Map<Permission, bool>> get permissions$ =>
      _permissions;
  static Map<Permission, bool> get permissions => permissions$.value;

  //

  static void _setPermissions(Map<Permission, bool> data) {
    final isNotEqual = !listEquals(
      data.values.toList(),
      permissions.values.toList(),
    );

    if (isNotEqual) _permissions.add(data);
  }

  //

  static void checkAll() async {
    Map<Permission, bool> data = {};

    for (Permission item in _list) {
      final isGranted = await item.isGranted;
      data[item] = isGranted;
    }

    _setPermissions(data);
  }

  //

  static Future<bool?> request(Permission permission) async {
    // final dt = DateTime.now();

    final status = await permission.request();
    final isGranted = status.isGranted;

    // check for isPermanentlyDenied (read var warning)
    // final isRequested = DateTime.now().difference(dt).inSeconds > 1;
    if (status.isPermanentlyDenied || status.isRestricted || status.isLimited) {
      await openAppSettings();
      return null;
    }

    Map<Permission, bool> data = Map.of(permissions);
    data[permission] = isGranted;
    _setPermissions(data);

    return isGranted;
  }

  //

  static Future<bool?> check(Permission permission) async {
    PermissionStatus status = await permission.request();

    if (status.isPermanentlyDenied || status.isRestricted) {
      openAppSettings();
      return null;
    }

    return status.isGranted;
  }
}
