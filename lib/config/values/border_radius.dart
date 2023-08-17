// Flutter imports:
import 'package:flutter/material.dart';

class MyBorderRadius {
  MyBorderRadius._();

  static const zero = BorderRadius.all(Radius.circular(0));
  static const allRounded4 = BorderRadius.all(Radius.circular(4));
  static const allRounded6 = BorderRadius.all(Radius.circular(6));
  static const allRounded8 = BorderRadius.all(Radius.circular(8));
  static const allRounded10 = BorderRadius.all(Radius.circular(10));
  static const allRounded11 = BorderRadius.all(Radius.circular(11));
  static const allRounded12 = BorderRadius.all(Radius.circular(12));
  static const allRounded14 = BorderRadius.all(Radius.circular(14));
  static const allRounded15 = BorderRadius.all(Radius.circular(15));
  static const allRounded16 = BorderRadius.all(Radius.circular(16));
  static const allRounded28 = BorderRadius.all(Radius.circular(28));
  static const allRounded48 = BorderRadius.all(Radius.circular(48));
  static const allRounded64 = BorderRadius.all(Radius.circular(64));
  static const allRounded90 = BorderRadius.all(Radius.circular(90));
  static const allRounded100 = BorderRadius.all(Radius.circular(100));

  static const topRounded10 = BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
  );
  static const topRounded16 = BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );

  static const topRounded24 = BorderRadius.only(
    topLeft: Radius.circular(24),
    topRight: Radius.circular(24),
  );

  static const bottomRounded = BorderRadius.only(
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );

  static const popUpRounded = RoundedRectangleBorder(
    borderRadius: MyBorderRadius.topRounded24,
  );
}
