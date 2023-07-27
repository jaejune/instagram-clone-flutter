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

  /// File path: assets/icons/add.svg
  String get add => 'assets/icons/add.svg';

  /// File path: assets/icons/arrow_down.svg
  String get arrowDown => 'assets/icons/arrow_down.svg';

  /// File path: assets/icons/bookmark.svg
  String get bookmark => 'assets/icons/bookmark.svg';

  /// File path: assets/icons/comment.svg
  String get comment => 'assets/icons/comment.svg';

  /// File path: assets/icons/feed-fill.svg
  String get feedFill => 'assets/icons/feed-fill.svg';

  /// File path: assets/icons/feed.svg
  String get feed => 'assets/icons/feed.svg';

  /// File path: assets/icons/heart-fill.svg
  String get heartFill => 'assets/icons/heart-fill.svg';

  /// File path: assets/icons/heart.svg
  String get heart => 'assets/icons/heart.svg';

  /// File path: assets/icons/home-fill.svg
  String get homeFill => 'assets/icons/home-fill.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/logo.svg
  String get logo => 'assets/icons/logo.svg';

  /// File path: assets/icons/message.svg
  String get message => 'assets/icons/message.svg';

  /// File path: assets/icons/more.svg
  String get more => 'assets/icons/more.svg';

  /// File path: assets/icons/plus_button.svg
  String get plusButton => 'assets/icons/plus_button.svg';

  /// File path: assets/icons/reels-fill.svg
  String get reelsFill => 'assets/icons/reels-fill.svg';

  /// File path: assets/icons/reels.svg
  String get reels => 'assets/icons/reels.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// File path: assets/icons/shop-fill.svg
  String get shopFill => 'assets/icons/shop-fill.svg';

  /// File path: assets/icons/shop.svg
  String get shop => 'assets/icons/shop.svg';

  /// List of all assets
  List<String> get values => [
        add,
        arrowDown,
        bookmark,
        comment,
        feedFill,
        feed,
        heartFill,
        heart,
        homeFill,
        home,
        logo,
        message,
        more,
        plusButton,
        reelsFill,
        reels,
        share,
        shopFill,
        shop
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/profile.jpeg
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile.jpeg');

  /// File path: assets/images/profile1.jpeg
  AssetGenImage get profile1 =>
      const AssetGenImage('assets/images/profile1.jpeg');

  /// File path: assets/images/profile2.jpeg
  AssetGenImage get profile2 =>
      const AssetGenImage('assets/images/profile2.jpeg');

  /// File path: assets/images/profile3.jpeg
  AssetGenImage get profile3 =>
      const AssetGenImage('assets/images/profile3.jpeg');

  /// File path: assets/images/profile4.jpeg
  AssetGenImage get profile4 =>
      const AssetGenImage('assets/images/profile4.jpeg');

  /// File path: assets/images/sample1.jpeg
  AssetGenImage get sample1 =>
      const AssetGenImage('assets/images/sample1.jpeg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [profile, profile1, profile2, profile3, profile4, sample1];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
