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

  /// File path: assets/icons/earth.png
  AssetGenImage get earth => const AssetGenImage('assets/icons/earth.png');

  /// File path: assets/icons/earthquake.png
  AssetGenImage get earthquake =>
      const AssetGenImage('assets/icons/earthquake.png');

  /// File path: assets/icons/ecologic.png
  AssetGenImage get ecologic =>
      const AssetGenImage('assets/icons/ecologic.png');

  /// File path: assets/icons/ecologic_icon.png
  AssetGenImage get ecologicIcon =>
      const AssetGenImage('assets/icons/ecologic_icon.png');

  /// File path: assets/icons/electric.png
  AssetGenImage get electric =>
      const AssetGenImage('assets/icons/electric.png');

  /// File path: assets/icons/en_icon.png
  AssetGenImage get enIcon => const AssetGenImage('assets/icons/en_icon.png');

  /// File path: assets/icons/fire.png
  AssetGenImage get fire => const AssetGenImage('assets/icons/fire.png');

  /// File path: assets/icons/langs_icon.png
  AssetGenImage get langsIcon =>
      const AssetGenImage('assets/icons/langs_icon.png');

  /// File path: assets/icons/natural.png
  AssetGenImage get natural => const AssetGenImage('assets/icons/natural.png');

  /// File path: assets/icons/right_icon.svg
  String get rightIcon => 'assets/icons/right_icon.svg';

  /// File path: assets/icons/ru_icon.png
  AssetGenImage get ruIcon => const AssetGenImage('assets/icons/ru_icon.png');

  /// File path: assets/icons/snow.png
  AssetGenImage get snow => const AssetGenImage('assets/icons/snow.png');

  /// File path: assets/icons/technogenic.png
  AssetGenImage get technogenic =>
      const AssetGenImage('assets/icons/technogenic.png');

  /// File path: assets/icons/transport.png
  AssetGenImage get transport =>
      const AssetGenImage('assets/icons/transport.png');

  /// File path: assets/icons/uz_icon.png
  AssetGenImage get uzIcon => const AssetGenImage('assets/icons/uz_icon.png');

  /// File path: assets/icons/water.png
  AssetGenImage get water => const AssetGenImage('assets/icons/water.png');

  /// File path: assets/icons/youtube.png
  AssetGenImage get youtube => const AssetGenImage('assets/icons/youtube.png');

  /// List of all assets
  List<dynamic> get values => [
        adviceIcon,
        backIcon,
        earth,
        earthquake,
        ecologic,
        ecologicIcon,
        electric,
        enIcon,
        fire,
        langsIcon,
        natural,
        rightIcon,
        ruIcon,
        snow,
        technogenic,
        transport,
        uzIcon,
        water,
        youtube
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/earthquake1.png
  AssetGenImage get earthquake1 =>
      const AssetGenImage('assets/images/earthquake1.png');

  /// File path: assets/images/earthquake2.png
  AssetGenImage get earthquake2 =>
      const AssetGenImage('assets/images/earthquake2.png');

  /// File path: assets/images/ecologic1.png
  AssetGenImage get ecologic1 =>
      const AssetGenImage('assets/images/ecologic1.png');

  /// File path: assets/images/fire1.png
  AssetGenImage get fire1 => const AssetGenImage('assets/images/fire1.png');

  /// File path: assets/images/fire2.png
  AssetGenImage get fire2 => const AssetGenImage('assets/images/fire2.png');

  /// File path: assets/images/snow1.png
  AssetGenImage get snow1 => const AssetGenImage('assets/images/snow1.png');

  /// File path: assets/images/snow2.png
  AssetGenImage get snow2 => const AssetGenImage('assets/images/snow2.png');

  /// File path: assets/images/transport1.png
  AssetGenImage get transport1 =>
      const AssetGenImage('assets/images/transport1.png');

  /// File path: assets/images/transport2.png
  AssetGenImage get transport2 =>
      const AssetGenImage('assets/images/transport2.png');

  /// File path: assets/images/water1.png
  AssetGenImage get water1 => const AssetGenImage('assets/images/water1.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        earthquake1,
        earthquake2,
        ecologic1,
        fire1,
        fire2,
        snow1,
        snow2,
        transport1,
        transport2,
        water1
      ];
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
