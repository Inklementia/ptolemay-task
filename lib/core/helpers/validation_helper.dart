// Project imports:
import 'package:testtask/config/values/reg_exps.dart';

class MyValidationHelper {
  MyValidationHelper._();

  static bool isPhone(String value) => value.length == 12;

  static bool isPassword(String value) => value.length >= 8;

  static bool isEmail(String value) => MyRegExps.email.hasMatch(value);
}
