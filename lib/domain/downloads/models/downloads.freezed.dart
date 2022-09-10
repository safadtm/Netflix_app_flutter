// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadsImage _$DownloadsImageFromJson(Map<String, dynamic> json) {
  return _DownloadsImage.fromJson(json);
}

/// @nodoc
mixin _$DownloadsImage {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsImageCopyWith<DownloadsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsImageCopyWith<$Res> {
  factory $DownloadsImageCopyWith(
          DownloadsImage value, $Res Function(DownloadsImage) then) =
      _$DownloadsImageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$DownloadsImageCopyWithImpl<$Res>
    implements $DownloadsImageCopyWith<$Res> {
  _$DownloadsImageCopyWithImpl(this._value, this._then);

  final DownloadsImage _value;
  // ignore: unused_field
  final $Res Function(DownloadsImage) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadsImageCopyWith<$Res>
    implements $DownloadsImageCopyWith<$Res> {
  factory _$$_DownloadsImageCopyWith(
          _$_DownloadsImage value, $Res Function(_$_DownloadsImage) then) =
      __$$_DownloadsImageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_DownloadsImageCopyWithImpl<$Res>
    extends _$DownloadsImageCopyWithImpl<$Res>
    implements _$$_DownloadsImageCopyWith<$Res> {
  __$$_DownloadsImageCopyWithImpl(
      _$_DownloadsImage _value, $Res Function(_$_DownloadsImage) _then)
      : super(_value, (v) => _then(v as _$_DownloadsImage));

  @override
  _$_DownloadsImage get _value => super._value as _$_DownloadsImage;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_DownloadsImage(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadsImage implements _DownloadsImage {
  const _$_DownloadsImage(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_DownloadsImage.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsImageFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'DownloadsImage(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadsImage &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadsImageCopyWith<_$_DownloadsImage> get copyWith =>
      __$$_DownloadsImageCopyWithImpl<_$_DownloadsImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsImageToJson(
      this,
    );
  }
}

abstract class _DownloadsImage implements DownloadsImage {
  const factory _DownloadsImage(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_DownloadsImage;

  factory _DownloadsImage.fromJson(Map<String, dynamic> json) =
      _$_DownloadsImage.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadsImageCopyWith<_$_DownloadsImage> get copyWith =>
      throw _privateConstructorUsedError;
}
