import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_theme_data.dart';
import '../utils/constants/constants.dart';

class TextField1 extends StatelessWidget {
  const TextField1({
    super.key,
    this.labelText,
    this.height,
    this.width,
    this.hintText,
    required this.controller,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.border,
    this.keyboardType,
    this.maxLines,
    this.cursorColor,
    this.contentPadding,
    this.isDense,
    this.onChanged,
    this.onTap,
    this.style,
    this.constraints,
    this.readOnly = false,
    this.filled,
    this.fillColor,
    this.borderColor,
    this.suffixEnabled = false,
    this.textInputAction,
    this.autofocus = false,
  });

  final String? labelText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextStyle? style;
  final double? height;
  final double? width;
  final Color? cursorColor;
  final bool suffixEnabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final InputBorder? border;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isDense;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final BoxConstraints? constraints;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final bool? filled;
  final Color? fillColor;
  final Color? borderColor;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    InputBorder inputBorder(Color color) =>
        border ??
        OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 2.w),
          borderRadius: BorderRadius.circular(8.r),
        );

    return TextFormField(
      controller: controller,
      cursorColor: cursorColor ?? AppThemeData.primaryTextColor,
      focusNode: focusNode,
      autofocus: autofocus,
      style: style ?? AppStyle.title3,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      readOnly: readOnly,
      maxLines: maxLines,
      onChanged: onChanged,
      textInputAction: textInputAction,
      onTap: onTap,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        constraints: constraints,
        labelStyle: AppStyle.body.copyWith(color: AppThemeData.grey700),
        labelText: labelText,
        isDense: isDense,
        hintText: hintText,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.h,
            ),
        hintStyle: AppStyle.title3.copyWith(color: AppThemeData.grey700),
        suffixIcon: suffixEnabled
            ? suffixIcon ??
                (readOnly
                    ? null
                    : GestureDetector(
                        onTap: () {
                          controller.clear();
                          if (focusNode != null) {
                            if (focusNode!.hasFocus) {
                              focusNode!.unfocus();
                            }
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: SvgPicture.asset(
                              AppAsset.cross,
                              height: 24.w,
                              width: 24.w,
                            ),
                          ),
                        ),
                      ))
            : null,
        suffixIconColor: (focusNode?.hasFocus ?? false)
            ? AppThemeData.white
            : AppThemeData.hintTextColor,
        border: inputBorder(borderColor ?? AppThemeData.textFieldBorderColor),
        focusedBorder:
            inputBorder(borderColor ?? AppThemeData.textFieldBorderColor),
        disabledBorder:
            inputBorder(borderColor ?? AppThemeData.textFieldBorderColor),
        enabledBorder:
            inputBorder(borderColor ?? AppThemeData.textFieldBorderColor),
        focusedErrorBorder: inputBorder(AppThemeData.red),
        errorBorder: inputBorder(AppThemeData.red),
      ),
    );
  }
}
