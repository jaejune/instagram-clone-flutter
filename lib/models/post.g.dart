// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PostCWProxy {
  Post content(String content);

  Post isLike(bool isLike);

  Post profile(Profile profile);

  Post image(String image);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Post(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Post(...).copyWith(id: 12, name: "My name")
  /// ````
  Post call({
    String? content,
    bool? isLike,
    Profile? profile,
    String? image,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPost.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPost.copyWith.fieldName(...)`
class _$PostCWProxyImpl implements _$PostCWProxy {
  const _$PostCWProxyImpl(this._value);

  final Post _value;

  @override
  Post content(String content) => this(content: content);

  @override
  Post isLike(bool isLike) => this(isLike: isLike);

  @override
  Post profile(Profile profile) => this(profile: profile);

  @override
  Post image(String image) => this(image: image);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Post(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Post(...).copyWith(id: 12, name: "My name")
  /// ````
  Post call({
    Object? content = const $CopyWithPlaceholder(),
    Object? isLike = const $CopyWithPlaceholder(),
    Object? profile = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
  }) {
    return Post(
      content: content == const $CopyWithPlaceholder() || content == null
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      isLike: isLike == const $CopyWithPlaceholder() || isLike == null
          ? _value.isLike
          // ignore: cast_nullable_to_non_nullable
          : isLike as bool,
      profile: profile == const $CopyWithPlaceholder() || profile == null
          ? _value.profile
          // ignore: cast_nullable_to_non_nullable
          : profile as Profile,
      image: image == const $CopyWithPlaceholder() || image == null
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as String,
    );
  }
}

extension $PostCopyWith on Post {
  /// Returns a callable class that can be used as follows: `instanceOfPost.copyWith(...)` or like so:`instanceOfPost.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PostCWProxy get copyWith => _$PostCWProxyImpl(this);
}
