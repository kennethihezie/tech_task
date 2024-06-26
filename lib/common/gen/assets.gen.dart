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

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Nunito-ExtraBold.ttf
  String get nunitoExtraBold => 'assets/fonts/Nunito-ExtraBold.ttf';

  /// File path: assets/fonts/Nunito-Regular.ttf
  String get nunitoRegular => 'assets/fonts/Nunito-Regular.ttf';

  /// List of all assets
  List<String> get values => [nunitoExtraBold, nunitoRegular];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/item1.png
  AssetGenImage get item1 => const AssetGenImage('assets/images/png/item1.png');

  /// File path: assets/images/png/item2.png
  AssetGenImage get item2 => const AssetGenImage('assets/images/png/item2.png');

  /// File path: assets/images/png/item3.png
  AssetGenImage get item3 => const AssetGenImage('assets/images/png/item3.png');

  /// File path: assets/images/png/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/png/star.png');

  /// List of all assets
  List<AssetGenImage> get values => [item1, item2, item3, star];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/bottom_chat.svg
  SvgGenImage get bottomChat =>
      const SvgGenImage('assets/images/svg/bottom_chat.svg');

  /// File path: assets/images/svg/dull_star.svg
  SvgGenImage get dullStar =>
      const SvgGenImage('assets/images/svg/dull_star.svg');

  /// File path: assets/images/svg/home.svg
  SvgGenImage get home => const SvgGenImage('assets/images/svg/home.svg');

  /// File path: assets/images/svg/location.svg
  SvgGenImage get location =>
      const SvgGenImage('assets/images/svg/location.svg');

  /// File path: assets/images/svg/location_bottom.svg
  SvgGenImage get locationBottom =>
      const SvgGenImage('assets/images/svg/location_bottom.svg');

  /// File path: assets/images/svg/love.svg
  SvgGenImage get love => const SvgGenImage('assets/images/svg/love.svg');

  /// File path: assets/images/svg/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/images/svg/notification.svg');

  /// File path: assets/images/svg/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/images/svg/profile.svg');

  /// File path: assets/images/svg/star_bottom.svg
  SvgGenImage get starBottom =>
      const SvgGenImage('assets/images/svg/star_bottom.svg');

  /// File path: assets/images/svg/star_top.svg
  SvgGenImage get starTop =>
      const SvgGenImage('assets/images/svg/star_top.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        bottomChat,
        dullStar,
        home,
        location,
        locationBottom,
        love,
        notification,
        profile,
        starBottom,
        starTop
      ];
}

class LuvitAssets {
  LuvitAssets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
