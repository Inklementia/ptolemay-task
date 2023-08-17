class MyRegExps {
  MyRegExps._();
  static RegExp get digits => RegExp(r'[0-9]');

  static RegExp get nonDigits => RegExp(r'\D');

  static RegExp get month => RegExp(r'^(0?[1-9]|1[0-2])$');

  static RegExp get fractional => RegExp(r'(^\d*\.?\d*)');

  static RegExp get fractional2 => RegExp(r'(^-?\d*\.?\d{0,2})');

  static RegExp get fractional4 => RegExp(r'(^-?\d*\.?\d{0,4})');

  static RegExp get fractionalNegative => RegExp(r'(^-?\d*\.?\d*)');

  static RegExp get email => RegExp(r'(\w+@[a-zA-Z_-]+?\.[a-zA-Z])');

  //

  static RegExp get specialSymbol => RegExp(r'[!@$%]');

  static RegExp get letters => RegExp(r'[a-zA-Z]');
}
