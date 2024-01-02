import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';
import 'app_dimensions.dart';
import 'color_schemes.dart';

class AppThemeStyle {
  static InputDecoration getInputDecoration(BuildContext context) =>
      _getInputDecoration(Theme.of(context).colorScheme);

  static InputDecoration _getInputDecoration(ColorScheme colorScheme) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
      borderSide: BorderSide.none,
    );
    return InputDecoration(
      enabledBorder: border,
      focusedBorder: border.copyWith(
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      errorBorder: border.copyWith(
        borderSide: BorderSide(color: colorScheme.error),
      ),
      hintStyle: _hintStyle(colorScheme),
      helperStyle: _helperStyle(colorScheme),
      filled: true,
      fillColor: colorScheme.surfaceVariant,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
    );
  }

  static InputDecoration getSearchHeaderDecoration(BuildContext context) {
    final inputBorder = UnderlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppDimensions.defaultRadius),
        ));

    return InputDecoration(
      hintText: '',
      // helperStyle:
      // BodyMText.defaultStyle.copyWith(color: getIt<AppColors>().greyColors.shade800),
      contentPadding: EdgeInsets.symmetric(
        vertical: AppDimensions.defaultPadding,
        horizontal: 16.sp,
      ),
      filled: true,
      fillColor: Theme.of(context).colorScheme.surfaceVariant,
      border: inputBorder,
      focusedBorder: inputBorder.copyWith(
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      enabledBorder: inputBorder,
      floatingLabelBehavior: FloatingLabelBehavior.never,
    );
  }

  static InputDecoration getSearchInputDecoration(BuildContext context) {
    const inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide.none,
    );
    return InputDecoration(
      hintText: '',
      // helperStyle:
      //     BodyMText.defaultStyle.copyWith(color: getIt<AppColors>().greyColors.shade800),
      prefixIcon: Assets.icons.icFluentAccessibility24Filled.svg(
        width: 20.sp,
        height: 20.sp,
        fit: BoxFit.scaleDown,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      filled: true,
      fillColor: Theme.of(context).colorScheme.surfaceVariant,
      border: inputBorder,
      focusedBorder: inputBorder.copyWith(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
      ),
      enabledBorder: inputBorder,
      floatingLabelBehavior: FloatingLabelBehavior.never,
    );
  }

  static TextTheme textTheme(BuildContext context) =>
      _textTheme(Theme.of(context).colorScheme);

  static TextTheme _textTheme(ColorScheme colorScheme) =>
      Typography.englishLike2021.apply(
        fontSizeFactor: 1.sp,
        fontFamily: FontFamily.roboto,
        bodyColor: colorScheme.onSurface,
      );

  static TextStyle inputTextStyle(context) =>
      _inputTextStyle(Theme.of(context).colorScheme);

  static TextStyle _inputTextStyle(ColorScheme colorScheme) => TextStyle(
        fontSize: AppDimensions.bodyMFontSize.sp,
        color: colorScheme.onSurface,
      );

  static TextStyle titleTextStyle(context) =>
      _titleTextStyle(Theme.of(context).colorScheme);
  static TextStyle _titleTextStyle(ColorScheme colorScheme) => TextStyle(
        fontSize: AppDimensions.bodyMFontSize.sp,
        color: colorScheme.onSurface,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.01,
        height: 1.5,
      );

  static AppBarTheme appBarTheme(
    BuildContext context,
    ColorScheme scheme,
    SystemUiOverlayStyle overlayStyle,
  ) =>
      AppBarTheme(
        color: scheme.primary,
        elevation: 0,
        systemOverlayStyle: overlayStyle,
        iconTheme: IconThemeData(color: scheme.onPrimary),
        titleTextStyle: titleTextStyle(context),
      );

  static DropdownMenuThemeData _dropdownMenuTheme(ColorScheme colorScheme) =>
      DropdownMenuThemeData(
        textStyle: _inputTextStyle(colorScheme),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.surfaceVariant,
              style: BorderStyle.none,
              width: 1,
            ),
          ),
          outlineBorder: BorderSide(
            color: colorScheme.surfaceVariant,
            style: BorderStyle.solid,
            width: 1,
          ),
          activeIndicatorBorder: BorderSide(
            color: colorScheme.surfaceVariant,
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
      );

  static TextStyle labelStyle(BuildContext context) =>
      _labelStyle(Theme.of(context).colorScheme);

  static TextStyle _labelStyle(ColorScheme colorScheme) => TextStyle(
        color: colorScheme.onSurface,
        fontSize: AppDimensions.labelFontSize.sp,
      );

  static TextStyle floatingLabelStyle(BuildContext context) =>
      _floatingLabelStyle(Theme.of(context).colorScheme);

  static TextStyle _floatingLabelStyle(ColorScheme colorScheme) => TextStyle(
        color: colorScheme.onSurface,
        fontSize: AppDimensions.labelFontSize.sp,
      );

  static TextStyle errorStyle(BuildContext context) =>
      _errorStyle(Theme.of(context).colorScheme);

  static TextStyle _errorStyle(ColorScheme colorScheme) => TextStyle(
        color: colorScheme.error,
        fontSize: AppDimensions.labelFontSize.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle hintStyle(BuildContext context) =>
      _hintStyle(Theme.of(context).colorScheme);

  static TextStyle _hintStyle(ColorScheme colorScheme) => TextStyle(
        color: colorScheme.onSurface,
        fontSize: AppDimensions.bodyMFontSize.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle helperStyle(BuildContext context) =>
      _helperStyle(Theme.of(context).colorScheme);

  static TextStyle _helperStyle(ColorScheme colorScheme) => TextStyle(
        color: colorScheme.onSurface,
        fontSize: AppDimensions.labelFontSize.sp,
        fontWeight: FontWeight.w400,
      );

  static InputBorder defaultBorder(BuildContext context) => _defaultBorder(
        Theme.of(context).colorScheme,
      );

  static InputBorder _defaultBorder(ColorScheme colorScheme) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.textBorderRadius.sp),
        borderSide: BorderSide(
          color: colorScheme.outline,
          style: BorderStyle.solid,
          width: 1,
        ),
      );

  static InputBorder enabledBorder(BuildContext context) =>
      _enabledBorder(Theme.of(context).colorScheme);

  static InputBorder _enabledBorder(ColorScheme colorScheme) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppDimensions.textBorderRadius.sp,
          ),
          gapPadding: 16.sp,
          borderSide: BorderSide(
            color: colorScheme.outlineVariant,
            style: BorderStyle.solid,
            width: 1,
          ));

  static InputDecorationTheme _inputDecorationTheme(
    ColorScheme colorScheme,
  ) {
    return InputDecorationTheme(
      labelStyle: _labelStyle(colorScheme),
      floatingLabelStyle: _floatingLabelStyle(colorScheme),
      errorStyle: _errorStyle(colorScheme),
      hintStyle: _hintStyle(colorScheme),
      helperStyle: _helperStyle(colorScheme),
      focusColor: colorScheme.primary,
      contentPadding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 16.sp),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.textBorderRadius.sp),
      ),
      border: _defaultBorder(colorScheme),
      enabledBorder: _enabledBorder(colorScheme),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.textBorderRadius.sp),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.textBorderRadius.sp),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.textBorderRadius.sp),
      ),
    );
  }

  static BoxDecoration get transparentBoxDecoration => BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(AppDimensions.defaultRadius),
      border: Border.all(
        color: Colors.transparent,
        width: 1,
      ));

  static BoxShadow defaultBoxShadow(
      {Offset? offSet, double? blurRadius, Color? color}) {
    return BoxShadow(
        offset: offSet ?? const Offset(0, 6),
        blurRadius: blurRadius ?? 20,
        color: color ?? const Color.fromRGBO(180, 188, 201, 0.16));
  }

  static List<BoxShadow> get appListTileBoxShadow => const [
        BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 4,
            color: Color.fromRGBO(46, 52, 121, 0.04)),
        BoxShadow(
            offset: Offset(0, 8),
            blurRadius: 24,
            color: Color.fromRGBO(46, 52, 121, 0.04))
      ];

  static LinearGradient get defaultGradient => const LinearGradient(
        colors: [
          Color(0xFFE9DEFA),
          Color(0xFFFBFCDB),
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      );
  static Decoration get defaultBackgroundTextField => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFB4BCC9).withOpacity(0.16),
            blurRadius: 10.r,
          ),
        ],
        // color: getIt<AppColors>().lightColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppDimensions.defaultRadius,
          ),
        ),
      );
  static InputDecoration defaultDecorationTextField({
    String? hintText,
    TextStyle? hintStyle,
  }) =>
      InputDecoration(
        filled: true,
        // fillColor: Theme.of(context).colorScheme.surfaceVariant,
        hintText: hintText,
        hintStyle: hintStyle,
        border: const OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimensions.defaultRadius),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimensions.defaultRadius),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimensions.defaultRadius),
          ),
        ),
      );

  static ThemeData theme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: lightColorScheme,
      fontFamily: FontFamily.roboto,
      appBarTheme: appBarTheme(
        context,
        lightColorScheme,
        SystemUiOverlayStyle.light,
      ),
      textTheme: _textTheme(lightColorScheme),
      inputDecorationTheme: _inputDecorationTheme(lightColorScheme),
      dropdownMenuTheme: _dropdownMenuTheme(lightColorScheme),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      buttonTheme: ButtonThemeData(
        height: AppDimensions.buttonHeight.sp,
        textTheme: ButtonTextTheme.normal,
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    final textTheme = Typography.englishLike2021.apply(
      fontSizeFactor: 1.sp,
      fontFamily: FontFamily.roboto,
    );
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: darkColorScheme,
        fontFamily: FontFamily.roboto,
        appBarTheme: appBarTheme(
          context,
          darkColorScheme,
          SystemUiOverlayStyle.dark,
        ),
        textTheme: textTheme,
        inputDecorationTheme: _inputDecorationTheme(darkColorScheme),
        dropdownMenuTheme: _dropdownMenuTheme(darkColorScheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonTheme: ButtonThemeData(
          height: AppDimensions.buttonHeight.sp,
          textTheme: ButtonTextTheme.normal,
        ));
  }
}
