part of 'constants.dart';

class AppStyle {
  AppStyle._();

  static TextStyle get title1 => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get title2 => TextStyle(
    fontSize: 20.sp,
    letterSpacing: 0.35,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get title3 => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get title3Options => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.grey700,
    fontStyle: FontStyle.italic,
  );

  static TextStyle get headline => TextStyle(
    fontSize: 16.sp,
    fontFamily: AppFontFamily.roboto,
    fontWeight: FontWeight.w500,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get body => TextStyle(
    fontSize: 14.sp,
    fontFamily: AppFontFamily.roboto,
    fontWeight: FontWeight.w300,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF17W5Blue => TextStyle(
    fontSize: 17.sp,
    fontFamily: AppFontFamily.roboto,
    fontWeight: FontWeight.w500,
    color: AppThemeData.darkBlue,
  );

  static TextStyle get defaultF16W3Primary => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF16W6Secondary => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.secondaryTextColor,
  );

  static TextStyle get defaultF16W4Primary => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF16W4Secondary => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.secondaryTextColor,
  );

  static TextStyle get defaultF10W5HintColor => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.hintTextColor,
  );

  static TextStyle get defaultF12W5HintColor => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.hintTextColor,
  );

  static TextStyle get defaultF12W3Primary => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF12W5Primary => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF10W5Primary => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF10W4Primary => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF10W7Primary => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF10W7Secondary => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.secondaryTextColor,
  );

  static TextStyle get defaultF14W6Primary => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF14W5Secondary => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.secondaryTextColor,
  );

  static TextStyle get defaultF16W7Primary => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF16W7Secondary => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.secondaryTextColor,
  );

  static TextStyle get defaultF16W5Primary => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF24W7Primary => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.primaryTextColor,
  );

  static TextStyle get defaultF40W6White => TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w600,
    fontFamily: AppFontFamily.roboto,
    color: AppThemeData.white,
  );

  static TextStyle get defaultDialogTitle => const TextStyle(
    fontFamily: 'CupertinoSystemDisplay',
    inherit: false,
    fontSize: 17.0,
    color: AppThemeData.primaryTextColor,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: -0.5,
    textBaseline: TextBaseline.alphabetic,
  );

  static TextStyle get defaultDialogContent => const TextStyle(
    fontFamily: 'CupertinoSystemText',
    inherit: false,
    fontSize: 13.0,
    color: AppThemeData.primaryTextColor,
    fontWeight: FontWeight.w400,
    height: 1.35,
    letterSpacing: -0.2,
    textBaseline: TextBaseline.alphabetic,
  );
}
