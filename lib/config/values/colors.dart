// Flutter imports:
import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  // Primary
  static const Color primary = Color(0xFF172593);
  static const Color primaryA50 = Color(0x80172593);
  static const Color primaryA30 = Color(0x4D172593);
  static const Color primaryA20 = Color(0x33172593);
  static const Color primaryA10 = Color(0x1A172593);

  // Secondary
  static const Color secondary = Color(0xFF4441b2);
  static const Color secondaryA50 = Color(0x804441b2);
  static const Color secondaryA30 = Color(0x4D4441b2);
  static const Color secondaryA20 = Color(0x334441b2);
  static const Color secondaryA10 = Color(0x1A4441b2);

  // Tertiary
  static const Color tertiary = Color(0xFF35a4c1);
  static const Color tertiaryA50 = Color(0x8035a4c1);
  static const Color tertiaryA30 = Color(0x4D35a4c1);
  static const Color tertiaryA20 = Color(0x3335a4c1);
  static const Color tertiaryA10 = Color(0x1A35a4c1);

  // White
  static const white = Color(0xFFFFFFFF);
  static const whiteA50 = Color(0x80FFFFFF);
  static const whiteA30 = Color(0x66FFFFFF);
  static const whiteA20 = Color(0x44FFFFFF);
  static const whiteA10 = Color(0x1AFFFFFF);

  // Black
  static const black = Color(0xFF000000);
  static const blackA50 = Color(0x80000000);
  static const blackA30 = Color(0x4D000000);
  static const blackA20 = Color(0x44000000);
  static const blackA10 = Color(0x1A000000);

  // Black
  static const blackVariant = Color(0xFF141414);
  static const blackVariantA50 = Color(0x80141414);
  static const blackVariantA30 = Color(0x4D141414);
  static const blackVariantA20 = Color(0x44141414);
  static const blackVariantA10 = Color(0x1A141414);

  // Neutral
  static const neutral = Color(0xFF707D9F);
  static const neutralA50 = Color(0x80707D9F);
  static const neutralA30 = Color(0x4D707D9F);
  static const neutralA20 = Color(0x44707D9F);
  static const neutralA10 = Color(0x1A707D9F);

  // NeutralVariant 1
  static const neutralVariant1 = Color(0xFFF4F5F7);
  static const neutralVariant1A50 = Color(0x80F4F5F7);
  static const neutralVariant1A30 = Color(0x4DF4F5F7);
  static const neutralVariant1A20 = Color(0x44F4F5F7);
  static const neutralVariant1A10 = Color(0x1AF4F5F7);

  // NeutralVariant 2
  static const neutralVariant2 = Color(0xFFFAFAFB);
  static const neutralVariant2A50 = Color(0x80FAFAFB);
  static const neutralVariant2A30 = Color(0x4DFAFAFB);
  static const neutralVariant2A20 = Color(0x44FAFAFB);
  static const neutralVariant2A10 = Color(0x1AFAFAFB);

  //! Red
  static const red = Color(0xFFEB5757);
  static const redA50 = Color(0x80EB5757);
  static const redA30 = Color(0x4DEB5757);
  static const redA20 = Color(0x44EB5757);
  static const redA10 = Color(0x1AEB5757);

  //? Blue
  static const blue = Color(0xFF1A73E9);
  static const blueA50 = Color(0x801A73E9);
  static const blueA30 = Color(0x4D1A73E9);
  static const blueA20 = Color(0x441A73E9);
  static const blueA10 = Color(0x1A1A73E9);

  //* Green
  static const green = Color(0xFF47BF33);
  static const greenA50 = Color(0x8047BF33);
  static const greenA30 = Color(0x4D47BF33);
  static const greenA20 = Color(0x4447BF33);
  static const greenA10 = Color(0x1A47BF33);

  //^ Yellow
  static const yellow = Color(0xFFFFD146);
  static const yellowA70 = Color(0x44FFD146);

  //& Pink
  static const pink = Color(0xFFF084D2);
  static const pinkA20 = Color(0x44F084D2);

  //~ Purple
  static const Color purple = Color(0xFF6066FF);
  static const Color purpleA20 = Color(0x446066FF);

  // Orange
  static const orange = Color(0xFFEB7B17);
  static const orangeA20 = Color(0x44EB7B17);

  // Other
  static const transparent = Color(0x00FFFFFF);
  static const shrimmer = Color(0xFFFAFAFB);

  static Color colorFromText(String text) {
    var hash = 0;
    for (var i = 0; i < text.length; i++) {
      hash = text.codeUnitAt(i) + ((hash << 5) - hash);
    }
    final finalHash = hash.abs() % (256 * 256 * 256);
    final red = ((finalHash & 0xFF0000) >> 16);
    final blue = ((finalHash & 0xFF00) >> 8);
    final green = ((finalHash & 0xFF));
    final color = Color.fromRGBO(red, green, blue, 1);
    return color;
  }

  static LinearGradient gradientColorFromText(String text) {
    // Generate a color from the hash value of the input string
    int hashValue = text.hashCode;
    Color baseColor = Color(hashValue).withOpacity(1.0);
    double variationIntensity =
        0.2; // Increase for more variation, decrease for less

    // Create a slightly darker color by reducing RGB values
    Color startColor = Color.fromARGB(
      baseColor.alpha,
      (baseColor.red * (1 - variationIntensity)).round(),
      (baseColor.green * (1 - variationIntensity)).round(),
      (baseColor.blue * (1 - variationIntensity)).round(),
    );

    // Create a slightly lighter color by increasing RGB values
    Color endColor = Color.fromARGB(
      baseColor.alpha,
      (baseColor.red * (1 + variationIntensity)).round(),
      (baseColor.green * (1 + variationIntensity)).round(),
      (baseColor.blue * (1 + variationIntensity)).round(),
    );

    // Return a linear gradient with the start and end colors
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [startColor, endColor],
    );
  }
}
