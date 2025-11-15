// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/banner_1.jpg
  AssetGenImage get banner1 =>
      const AssetGenImage('assets/images/banner_1.jpg');

  /// File path: assets/images/banner_2.jpg
  AssetGenImage get banner2 =>
      const AssetGenImage('assets/images/banner_2.jpg');

  /// File path: assets/images/banner_3.jpg
  AssetGenImage get banner3 =>
      const AssetGenImage('assets/images/banner_3.jpg');

  /// File path: assets/images/foto_faris.jpeg
  AssetGenImage get fotoFaris =>
      const AssetGenImage('assets/images/foto_faris.jpeg');

  /// File path: assets/images/product_1.jpg
  AssetGenImage get product1 =>
      const AssetGenImage('assets/images/product_1.jpg');

  /// File path: assets/images/product_2.jpg
  AssetGenImage get product2 =>
      const AssetGenImage('assets/images/product_2.jpg');

  /// File path: assets/images/product_3.jpg
  AssetGenImage get product3 =>
      const AssetGenImage('assets/images/product_3.jpg');

  /// File path: assets/images/product_4.jpg
  AssetGenImage get product4 =>
      const AssetGenImage('assets/images/product_4.jpg');

  /// File path: assets/images/product_5.jpg
  AssetGenImage get product5 =>
      const AssetGenImage('assets/images/product_5.jpg');

  /// File path: assets/images/product_6.jpg
  AssetGenImage get product6 =>
      const AssetGenImage('assets/images/product_6.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
    banner1,
    banner2,
    banner3,
    fotoFaris,
    product1,
    product2,
    product3,
    product4,
    product5,
    product6,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
