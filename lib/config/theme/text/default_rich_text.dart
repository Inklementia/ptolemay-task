// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:testtask/config/values/colors.dart';

class MyRichText extends StatelessWidget {
  //
  final String firstText;
  final String secondText;
  final String? thirdText;

  final TextStyle? firstStyle;
  final TextStyle? seconStyle;
  final TextStyle? thirdStyle;

  final void Function()? onFirstTap;
  final void Function()? onSecondTap;
  final void Function()? onThirdTap;

  final TextAlign? textAlign;

  const MyRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.thirdText,
    this.firstStyle,
    this.seconStyle,
    this.thirdStyle,
    this.onFirstTap,
    this.onSecondTap,
    this.onThirdTap,
    this.textAlign,
  });

  GestureRecognizer? get recognizer1 {
    if (onFirstTap != null) {
      return TapGestureRecognizer()..onTap = onFirstTap;
    } else {
      return null;
    }
  }

  GestureRecognizer? get recognizer2 {
    if (onSecondTap != null) {
      return TapGestureRecognizer()..onTap = onSecondTap;
    } else {
      return null;
    }
  }

  GestureRecognizer? get recognizer3 {
    if (onThirdTap != null) {
      return TapGestureRecognizer()..onTap = onThirdTap;
    } else {
      return null;
    }
  }

  TextStyle get textStyle1 {
    return firstStyle ??
        const TextStyle(
          fontSize: 14,
          height: 18 / 14,
          color: MyColors.black,
        );
  }

  TextStyle get textStyle2 {
    return seconStyle ??
        const TextStyle(
          fontSize: 14,
          height: 18 / 14,
          fontWeight: FontWeight.w600,
          color: MyColors.primary,
          decoration: TextDecoration.underline,
        );
  }

  TextStyle get textStyle3 {
    return thirdStyle ??
        const TextStyle(
          fontSize: 14,
          height: 18 / 14,
          color: MyColors.black,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: textStyle1,
            recognizer: recognizer1,
          ),
          TextSpan(
            text: secondText,
            style: textStyle2,
            recognizer: recognizer2,
          ),
          if (thirdText != null)
            TextSpan(
              text: thirdText,
              style: textStyle3,
              recognizer: recognizer3,
            ),
        ],
      ),
      textAlign: textAlign,
    );
  }
}
