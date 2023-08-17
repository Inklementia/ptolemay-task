// Package imports:
import 'package:intl/intl.dart';
import 'package:testtask/config/values/date_formats.dart';
import 'package:intl/date_symbol_data_local.dart';

class MyDateFormatter {
  MyDateFormatter._();

  static init() {
    initializeDateFormatting();
  }

  static String format(DateTime? date, String newPattern) {
    if (date == null) return '';
    return DateFormat(newPattern, 'en').format(date);
  }

  static DateTime? parse(String? date, String newPattern) {
    if (date == null || date == '') return null;
    return DateFormat(newPattern, 'en').parse(date);
  }

  ///
  static String fHHmm(DateTime? date) => format(date, MyDateFormats.HHmm);

  /// Форматированный вывод названия дня недели
  static String fEEE(DateTime? date) => format(date, MyDateFormats.EEE);
  static String fEEEE(DateTime? date) => format(date, MyDateFormats.EEEE);

  /// Форматированный вывод названия месяца
  static String fMMM(DateTime? date) => format(date, MyDateFormats.MMM);
  static String fMMMM(DateTime? date) => format(date, MyDateFormats.MMMM);

  /// Форматированный вывод в формате "11 апреля"
  static String fdMMM(DateTime? date) => format(date, MyDateFormats.dMMM);
  static String fdMMMM(DateTime? date) => format(date, MyDateFormats.dMMMM);

  /// Форматированный вывод в формате "11 апреля 2018"
  static String fdMMMy(DateTime? date) => format(date, MyDateFormats.dMMMy);
  static String fdMMMMy(DateTime? date) => format(date, MyDateFormats.dMMMMy);

  /// Форматированный вывод в формате "Апрель 2018"
  static String fMMyySlash(DateTime? date) =>
      format(date, MyDateFormats.MMyySlash);
  static String fMMMMy(DateTime? date) => format(date, MyDateFormats.MMMMy);

  static String fyyMM(DateTime? date) => format(date, MyDateFormats.yyMM);

  ///
  static String fddMMyyyy(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyy);

  static String fddMMyyyySlash(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyySlash);

  ///
  static String fddMMyyyyHHmmss(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyyHHmmss);

  static String fddMMyyyyHHmmssSlash(DateTime? date) =>
      format(date, MyDateFormats.ddMMyyyyHHmmssSlash);

  static String fyyyyMMddHHmmss(DateTime? date) =>
      format(date, MyDateFormats.yyyyMMddHHmmss);

  ///
  static String fyyyyMMdd(DateTime date) =>
      format(date, MyDateFormats.yyyyMMdd);

  ///
  static DateTime? pddMMyyyy(String date) =>
      parse(date, MyDateFormats.ddMMyyyy);

  static DateTime? pddMMyyyySlash(String date) =>
      parse(date, MyDateFormats.ddMMyyyySlash);

  ///
  static DateTime? pyyyyMMddHHmmss(String date) =>
      parse(date, MyDateFormats.yyyyMMddHHmmss);

  static DateTime? pddMMyyyyHHmmssDot(String date) =>
      parse(date, MyDateFormats.ddMMyyyyHHmmssDot);

  static DateTime? pddMMyyyyHHmmssSlash(String date) =>
      parse(date, MyDateFormats.ddMMyyyyHHmmssSlash);

  ///
  static DateTime? pMMyySlash(String date) =>
      parse(date, MyDateFormats.MMyySlash);
}
