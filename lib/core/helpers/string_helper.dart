// Package imports:
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

// Project imports:
import 'package:testtask/config/values/reg_exps.dart';
import 'validation_helper.dart';

class MyStringHelper {
  MyStringHelper._();

  static String removeNonNumbers(String data) {
    return data.replaceAll(MyRegExps.nonDigits, '');
  }

  static String? tinMask(String? data) {
    if (data == null || data.length != 9) return data;

    final p = data;
    return '${p[0]}${p[1]}${p[2]} ${p[3]}${p[4]}${p[5]} ${p[6]}${p[7]}${p[8]}';
  }

  static String? pinMask(String? data) {
    if (data == null || data.length != 14) return data;

    final p = data;
    return '${p[0]}${p[1]}${p[2]} ${p[3]}${p[4]}${p[5]} ${p[6]}${p[7]}${p[8]} ${p[9]}${p[10]}${p[11]} ${p[12]}${p[13]}';
  }

  static String? uinMask(String? data) {
    if (data == null) {
      return data;
    } else if (data.length == 9) {
      return tinMask(data);
    } else if (data.length == 14) {
      return pinMask(data);
    } else {
      return data;
    }
  }

  static String phoneMask(String? data) {
    if (data == null) return '';

    String text = removeNonNumbers(data);
    if (!MyValidationHelper.isPhone(text)) return data;

    final mask = formatAsPhoneNumber(text)!;
    return mask;
  }

  static String nameInitials(String name) {
    var splittingName = name.trim().split(' ');
    String firstName = splittingName[0];
    String lastName = splittingName[1];
    return '${firstName[0]}${lastName[0]}';
  }
}
