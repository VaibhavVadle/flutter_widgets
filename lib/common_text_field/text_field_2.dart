import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets/bloc/obscure_icon_bloc/obscure_icon_bloc.dart';

import '../utils/app_theme_data.dart';

class TextField2 extends StatelessWidget {
  const TextField2({
    super.key,
    this.label,
    this.subLabel,
    required this.controller,
    this.hintText = '',
    this.textInputAction = TextInputAction.done,
    this.keyboardType,
    this.maxLines = 1,
    this.maxLength,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    this.focusNode,
    this.onTapSuffix,
    this.errorText,
    this.suffixWidget,
    this.prefixWidget,
    this.isPassword = false,
    this.readOnly = false,
    this.disabled,
    this.isRequired = false,
    this.labelTrailingButton,
    this.onTap,
    this.borderRadius = 6,
    this.height,
    this.textStyle,
    this.hintStyle,
    this.contentPadding =
    const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
    this.focusBorderColor = AppThemeData.yellow,
    this.isDense,
    this.fillColor,
    this.borderColor = AppThemeData.lightGrey,
    this.autoFocus = false,
  });

  final String? label;
  final String? subLabel;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType? keyboardType;
  final int maxLines;
  final int? maxLength;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? errorText;
  final void Function()? onTapSuffix;
  final bool isPassword;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final bool readOnly;
  final bool? disabled;
  final bool isRequired;
  final Widget? labelTrailingButton;
  final double borderRadius;
  final double? height;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry contentPadding;
  final Color focusBorderColor;
  final bool? isDense;
  final Color? fillColor;
  final Color borderColor;
  final bool autoFocus;

  TextStyle get style => textStyle ?? AppStyle.semiLarge.semiBold;

  InputBorder get border => OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: borderColor),
    borderRadius: BorderRadius.circular(borderRadius),
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ObscureIconBloc>(
      create: (_) => ObscureIconBloc(),
      child: Semantics(
        label: label ?? "None",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (label != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: label,
                              style: AppStyles.medium.semiBold,
                            ),
                            if (isRequired)
                              TextSpan(
                                text: '*',
                                style: AppStyles.medium.semiBold
                                    .copyWith(color: AppColors.darkPink),
                              ),
                          ]),
                        ),
                        if (subLabel != null)
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              subLabel!,
                              style: AppStyles.extraSmall.normal
                                  .copyWith(color: AppColors.hintColor),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (labelTrailingButton != null) labelTrailingButton!
                ],
              ),
            BlocBuilder<ObscureIconBloc, ObscureIconState>(
                builder: (obscureIconContext, obscureIconState) {
                  return IgnorePointer(
                    ignoring: disabled ?? readOnly,
                    child: SizedBox(
                      height: height,
                      child: TextFormField(
                        controller: controller,
                        focusNode: focusNode,
                        textInputAction: textInputAction,
                        keyboardType: keyboardType,
                        autofocus: autoFocus,
                        maxLines: keyboardType == TextInputType.multiline
                            ? null
                            : maxLines,
                        maxLength: maxLength,
                        validator: validator,
                        buildCounter: (BuildContext context,
                            {required int currentLength,
                              required int? maxLength,
                              required bool isFocused}) {
                          return null; // Display the character count
                        },
                        obscureText:
                        isPassword ? obscureIconState.iconState : false,
                        inputFormatters: inputFormatters,
                        onChanged: onChanged,
                        onTap: onTap,
                        cursorColor: AppColors.black,
                        readOnly: readOnly,
                        style: style.copyWith(
                            color: readOnly ? AppColors.hintColor : null),
                        decoration: InputDecoration(
                          isDense: isDense,
                          filled: true,
                          fillColor: fillColor ??
                              (readOnly ? AppColors.offWhite : AppColors.white),
                          hintText: hintText,
                          errorText: errorText,
                          contentPadding: EdgeInsets.only(
                              right: contentPadding.horizontal / 2,
                              top: contentPadding.vertical / 2,
                              bottom: contentPadding.vertical / 2),
                          hintStyle: hintStyle ??
                              style.copyWith(
                                  color: AppColors.hintColor,
                                  fontWeight: FontWeight.w400),
                          errorStyle: AppStyles.small.semiBold
                              .copyWith(color: AppColors.vividPink),
                          prefixIcon: prefixWidget,
                          prefix: prefixWidget != null
                              ? null
                              : Padding(
                            padding: EdgeInsets.only(
                                left: contentPadding.horizontal / 2),
                          ),
                          suffixIcon: suffixWidget ??
                              (!isPassword
                                  ? null
                                  : Semantics(
                                label: (obscureIconState.iconState)
                                    ? 'Show $hintText'
                                    : 'Hide $hintText',
                                child: IconButton(
                                  splashRadius: 0.1,
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    obscureIconContext
                                        .read<ObscureIconBloc>()
                                        .add(ObscureIconPressed());
                                  },
                                  icon: Tooltip(
                                    message: (obscureIconState.iconState)
                                        ? S.current.showPassword
                                        : S.current.hidePassword,
                                    child: SvgPicture.asset(
                                      (obscureIconState.iconState)
                                          ? AppIcons.showPassword
                                          : AppIcons.hidePassword,
                                    ),
                                  ),
                                ),
                              )),
                          border: border,
                          enabledBorder: border,
                          disabledBorder: border,
                          focusedBorder: border.copyWith(
                            borderSide:
                            BorderSide(width: 1, color: focusBorderColor),
                          ),
                          errorBorder: border.copyWith(
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.vividPink),
                          ),
                          focusedErrorBorder: border.copyWith(
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.vividPink),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
