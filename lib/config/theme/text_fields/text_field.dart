// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testtask/config/assets/icon_constants.dart';
import 'package:testtask/config/theme/container/container.dart';
import 'package:testtask/config/theme/container/empty_container.dart';
import 'package:testtask/config/theme/icon/icon.dart';
import 'package:testtask/config/theme/progress_indicator/progress_indicator.dart';
import 'package:testtask/config/theme/text/default_rich_text.dart';
import 'package:testtask/config/theme/text/text12/text_12_semi_bold.dart';
import 'package:testtask/config/theme/text/text14/text_14_semi_bold.dart';
import 'package:testtask/config/values/border_radius.dart';
import 'package:testtask/config/values/box_constraints.dart';
import 'package:testtask/config/values/box_shadows.dart';
import 'package:testtask/config/values/colors.dart';
import 'package:testtask/config/values/edge_insets.dart';
import 'package:testtask/config/values/spaces.dart';

// Project imports:

class MyTextField extends StatefulWidget {
  //
  final String? labelText;
  final String? initialValue;
  final TextEditingController? controller;
  final TextStyle? style;

  final String? hintText;
  final String? errorText;

  final FloatingLabelBehavior? floatingLabelBehavior;

  final bool enabled;
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final bool isRequired;
  final bool canClear;
  final bool isLoading;
  final bool isValid;
  final bool showErrorUnder;

  final FocusNode? focusNode;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;

  final int? minLines;
  final int maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets contentPadding;

  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;

  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;

  const MyTextField({
    this.labelText,
    this.controller,
    this.initialValue,
    this.style,
    //
    this.hintText,
    this.errorText,
    this.floatingLabelBehavior,
    //
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.isRequired = false,
    this.canClear = true,
    this.isLoading = false,
    this.isValid = true,
    this.showErrorUnder = false,
    //
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    //
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    //
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding = MyEdgeInsets.h8v16,
    //
    this.prefixIconConstraints = MyBoxConstraints.all48,
    this.suffixIconConstraints = MyBoxConstraints.all48,
    //
    this.onTap,
    this.onChanged,
    this.onEditingComplete,
    Key? key,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  //
  late FocusNode focusNode;
  late TextEditingController controller;

  bool get showClear =>
      widget.canClear && focusNode.hasFocus && controller.text.isNotEmpty;

  @override
  void initState() {
    focusNode = widget.focusNode ?? FocusNode();
    controller = widget.controller ?? TextEditingController();

    if (widget.initialValue != null) controller.text = widget.initialValue!;
    focusNode.addListener(updateState);

    if (widget.canClear) {
      controller.addListener(updateState);
    }
    super.initState();
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  void dispose() {
    if (widget.canClear) {
      controller.removeListener(updateState);
      focusNode.removeListener(updateState);
    }
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Row(
            children: [
              if (widget.isRequired) ...[
                Expanded(
                  child: MyRichText(
                    firstText: widget.labelText!,
                    firstStyle: const TextStyle(
                      fontSize: 14,
                      color: MyColors.secondary,
                      fontWeight: FontWeight.w600,
                      height: 24 / 20,
                    ),
                    secondText: ' *',
                    seconStyle: const TextStyle(
                      color: MyColors.red,
                      fontSize: 14,
                    ),
                  ),
                ),
              ] else ...[
                Expanded(
                  child: MyText14s(
                    widget.labelText!,
                    color: MyColors.secondary,
                    height: 20,
                  ),
                ),
              ],
              if (!widget.isValid && !widget.showErrorUnder) ...[
                MyText12s(
                  widget.errorText ?? '',
                  color: MyColors.red,
                  maxLines: 2,
                  height: 18,
                ),
              ],
            ],
          ),
        MySpaces.v8,
        Stack(
          children: [
            MyContainer(
              color: MyColors.white,
              borderRadius: MyBorderRadius.allRounded10,
              boxShadow: MyBoxShadows.none,
              child: TextFormField(
                controller: controller,
                //
                focusNode: focusNode,
                enabled: widget.enabled,
                readOnly: widget.readOnly,
                autofocus: widget.autofocus,
                textAlign: widget.textAlign,
                obscureText: widget.obscureText,
                keyboardType: widget.keyboardType,
                textInputAction: widget.textInputAction,
                textCapitalization: widget.textCapitalization,

                //
                minLines: widget.minLines,
                maxLines: widget.maxLines,
                maxLength: widget.maxLength,
                buildCounter: buildCounter,
                inputFormatters: widget.inputFormatters,
                //
                onTap: widget.onTap,
                onChanged: widget.onChanged,
                onEditingComplete: widget.onEditingComplete,
                //
                style: widget.style ?? _style,
                decoration: _decoration,
              ),
            ),
            if (showClear && widget.maxLines > 1)
              Positioned(
                top: 8,
                right: 6,
                child: clearButton(),
              ),
          ],
        ),
        if (!widget.isValid && widget.showErrorUnder) ...[
          MySpaces.v8,
          MyText12s(
            widget.errorText ?? '',
            color: MyColors.red,
            maxLines: 2,
          ),
        ]
      ],
    );
  }

  Widget clearButton() {
    return MyIcon(
      size: 20,
      onTap: onClear,
      icon: MyIcons.closeCircle,
      padding: MyEdgeInsets.all8,
    );
  }

  void onClear() {
    controller.clear();
    widget.onChanged?.call('');
  }

  TextStyle get _style {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none,
      color: widget.enabled ? MyColors.secondary : MyColors.neutralVariant1,
    );
  }

  InputDecoration get _decoration {
    return InputDecoration(
      isDense: true,
      contentPadding: widget.contentPadding,

      //
      floatingLabelBehavior: widget.floatingLabelBehavior,
      hintText: widget.enabled ? widget.hintText : null,
      hintStyle: _hintStyle,
      //
      prefixIcon: widget.prefixIcon,
      prefixIconConstraints: widget.prefixIconConstraints,
      //
      suffixIcon: widget.isLoading
          ? const MyProgressIndicator(
              size: 16,
              strokeWidth: 3,
              color: MyColors.secondary,
              margin: MyEdgeInsets.all16,
            )
          : showClear
              ? (widget.maxLines == 1 ? clearButton() : const EmptyContainer())
              : widget.suffixIcon,
      suffixIconConstraints: widget.suffixIconConstraints,
      //
      filled: true,
      fillColor: widget.enabled ? MyColors.white : MyColors.green,
      enabledBorder: OutlineInputBorder(
        borderRadius: MyBorderRadius.allRounded10,
        borderSide: BorderSide(
            color: widget.isValid ? MyColors.neutralVariant1A20 : MyColors.red),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: MyBorderRadius.allRounded10,
        borderSide: BorderSide(color: MyColors.neutralVariant1A20),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: MyBorderRadius.allRounded10,
        borderSide: BorderSide(
            color: widget.isValid ? MyColors.secondary : MyColors.red),
      ),
    );
  }

  TextStyle get _hintStyle {
    return const TextStyle(
      fontSize: 16,
      color: MyColors.neutral,
      fontWeight: FontWeight.normal,
    );
  }

  Widget? buildCounter(
    BuildContext context, {
    required int currentLength,
    required int? maxLength,
    required bool isFocused,
  }) {
    return null;
  }
}
