// Package imports:
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// Project imports:
import 'package:testtask/config/values/reg_exps.dart';
import 'package:testtask/core/helpers/validation_helper.dart';

class MyTextMasks {
  MyTextMasks._();

  static final _filter = {'#': MyRegExps.digits};

  static MaskTextInputFormatter tin([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '### ### ###',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter pin([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '### ### ### ### ##',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter vatId([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '### ### ### ###',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter bankAccount([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '#### #### #### #### #### ',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter bankAccountLong([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '#### #### #### #### #### #### ###',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter bankId([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '#####',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter oked([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '#####',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter phone([String? data]) {
    final initialValue = data != null && MyValidationHelper.isPhone(data)
        ? data.substring(3)
        : data;

    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '+998 (##) ###-##-##',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter expireDate([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '##/##',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter card([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '#### #### #### ####',
      filter: _filter,
    );
  }

  static MaskTextInputFormatter month([String? initialValue]) {
    return MaskTextInputFormatter(
      initialText: initialValue,
      mask: '##/##',
      filter: _filter,
    );
  }
}
