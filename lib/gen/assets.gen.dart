/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/camera-icon.svg
  SvgGenImage get cameraIcon =>
      const SvgGenImage('assets/icons/camera-icon.svg');

  /// File path: assets/icons/close-box.svg
  SvgGenImage get closeBox => const SvgGenImage('assets/icons/close-box.svg');

  /// File path: assets/icons/close-circle.svg
  SvgGenImage get closeCircle =>
      const SvgGenImage('assets/icons/close-circle.svg');

  /// File path: assets/icons/close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/close.svg');

  /// File path: assets/icons/gallery-icon.svg
  SvgGenImage get galleryIcon =>
      const SvgGenImage('assets/icons/gallery-icon.svg');

  /// File path: assets/icons/google_signin.svg
  SvgGenImage get googleSignin =>
      const SvgGenImage('assets/icons/google_signin.svg');

  /// File path: assets/icons/ic_fluent_access_time_24_filled.svg
  SvgGenImage get icFluentAccessTime24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_access_time_24_filled.svg');

  /// File path: assets/icons/ic_fluent_accessibility_24_filled.svg
  SvgGenImage get icFluentAccessibility24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_accessibility_24_filled.svg');

  /// File path: assets/icons/ic_fluent_alert_24_filled.svg
  SvgGenImage get icFluentAlert24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_alert_24_filled.svg');

  /// File path: assets/icons/ic_fluent_arrow_down_24_filled.svg
  SvgGenImage get icFluentArrowDown24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_arrow_down_24_filled.svg');

  /// File path: assets/icons/ic_fluent_arrow_left_24_filled.svg
  SvgGenImage get icFluentArrowLeft24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_arrow_left_24_filled.svg');

  /// File path: assets/icons/ic_fluent_arrow_right_24_filled.svg
  SvgGenImage get icFluentArrowRight24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_arrow_right_24_filled.svg');

  /// File path: assets/icons/ic_fluent_error_circle_24_filled.svg
  SvgGenImage get icFluentErrorCircle24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_error_circle_24_filled.svg');

  /// File path: assets/icons/ic_fluent_eye_hide_24_filled.svg
  SvgGenImage get icFluentEyeHide24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_eye_hide_24_filled.svg');

  /// File path: assets/icons/ic_fluent_eye_show_24_filled.svg
  SvgGenImage get icFluentEyeShow24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_eye_show_24_filled.svg');

  /// File path: assets/icons/ic_fluent_search_24_filled.svg
  SvgGenImage get icFluentSearch24Filled =>
      const SvgGenImage('assets/icons/ic_fluent_search_24_filled.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        cameraIcon,
        closeBox,
        closeCircle,
        close,
        galleryIcon,
        googleSignin,
        icFluentAccessTime24Filled,
        icFluentAccessibility24Filled,
        icFluentAlert24Filled,
        icFluentArrowDown24Filled,
        icFluentArrowLeft24Filled,
        icFluentArrowRight24Filled,
        icFluentErrorCircle24Filled,
        icFluentEyeHide24Filled,
        icFluentEyeShow24Filled,
        icFluentSearch24Filled
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
