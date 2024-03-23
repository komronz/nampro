/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/advice_icon.png
  AssetGenImage get adviceIcon =>
      const AssetGenImage('assets/icons/advice_icon.png');

  /// File path: assets/icons/back_icon.svg
  String get backIcon => 'assets/icons/back_icon.svg';

  /// File path: assets/icons/electric.png
  AssetGenImage get electric =>
      const AssetGenImage('assets/icons/electric.png');

  /// File path: assets/icons/en_icon.png
  AssetGenImage get enIcon => const AssetGenImage('assets/icons/en_icon.png');

  /// File path: assets/icons/langs_icon.png
  AssetGenImage get langsIcon =>
      const AssetGenImage('assets/icons/langs_icon.png');

  /// File path: assets/icons/right_icon.svg
  String get rightIcon => 'assets/icons/right_icon.svg';

  /// File path: assets/icons/ru_icon.png
  AssetGenImage get ruIcon => const AssetGenImage('assets/icons/ru_icon.png');

  /// File path: assets/icons/technogenic.png
  AssetGenImage get technogenic =>
      const AssetGenImage('assets/icons/technogenic.png');

  /// File path: assets/icons/uz_icon.png
  AssetGenImage get uzIcon => const AssetGenImage('assets/icons/uz_icon.png');

  /// List of all assets
  List<dynamic> get values => [
        adviceIcon,
        backIcon,
        electric,
        enIcon,
        langsIcon,
        rightIcon,
        ruIcon,
        technogenic,
        uzIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/electric1.png
  AssetGenImage get electric1 =>
      const AssetGenImage('assets/images/electric1.png');

  /// File path: assets/images/electric2.png
  AssetGenImage get electric2 =>
      const AssetGenImage('assets/images/electric2.png');

  /// List of all assets
  List<AssetGenImage> get values => [electric1, electric2];
}

class $AssetsLocaleGen {
  const $AssetsLocaleGen();

  /// File path: assets/locale/en.json
  String get en => 'assets/locale/en.json';

  /// File path: assets/locale/ru.json
  String get ru => 'assets/locale/ru.json';

  /// File path: assets/locale/uz.json
  String get uz => 'assets/locale/uz.json';

  /// List of all assets
  List<String> get values => [en, ru, uz];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLocaleGen locale = $AssetsLocaleGen();
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
