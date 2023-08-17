// Package imports:
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testtask/config/values/shared_preference_keys.dart';

class MySPHelper {
  //
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //

  static bool? get isDark => _prefs.getBool(MySPKeys.isDark);
  static set isDark(bool? value) => _setData(MySPKeys.isDark, value);

  static bool get askedLocationPermission =>
      _prefs.getBool(MySPKeys.hasLocationPermission) ?? false;
  static set askedLocationPermission(bool? value) =>
      _setData(MySPKeys.hasLocationPermission, value);

  //

  static Future<bool> clear() => _prefs.clear();

  //

  static _setData(String key, dynamic value) {
    if (value == null)
      _prefs.remove(key);
    else if (value is String)
      _prefs.setString(key, value);
    else if (value is bool)
      _prefs.setBool(key, value);
    else if (value is int)
      _prefs.setInt(key, value);
    else if (value is List<String>)
      _prefs.setStringList(key, value);
    else {}
  }
}
