// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioDto _$AudioDtoFromJson(Map<String, dynamic> json) {
  return _AudioDto.fromJson(json);
}

/// @nodoc
mixin _$AudioDto {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  String? get audioUrl => throw _privateConstructorUsedError;
  bool? get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioDtoCopyWith<AudioDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioDtoCopyWith<$Res> {
  factory $AudioDtoCopyWith(AudioDto value, $Res Function(AudioDto) then) =
      _$AudioDtoCopyWithImpl<$Res, AudioDto>;
  @useResult
  $Res call(
      {String? imageUrl,
      String? title,
      String? artistName,
      String? audioUrl,
      bool? isLiked});
}

/// @nodoc
class _$AudioDtoCopyWithImpl<$Res, $Val extends AudioDto>
    implements $AudioDtoCopyWith<$Res> {
  _$AudioDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? artistName = freezed,
    Object? audioUrl = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioDtoImplCopyWith<$Res>
    implements $AudioDtoCopyWith<$Res> {
  factory _$$AudioDtoImplCopyWith(
          _$AudioDtoImpl value, $Res Function(_$AudioDtoImpl) then) =
      __$$AudioDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? imageUrl,
      String? title,
      String? artistName,
      String? audioUrl,
      bool? isLiked});
}

/// @nodoc
class __$$AudioDtoImplCopyWithImpl<$Res>
    extends _$AudioDtoCopyWithImpl<$Res, _$AudioDtoImpl>
    implements _$$AudioDtoImplCopyWith<$Res> {
  __$$AudioDtoImplCopyWithImpl(
      _$AudioDtoImpl _value, $Res Function(_$AudioDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? artistName = freezed,
    Object? audioUrl = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_$AudioDtoImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioDtoImpl implements _AudioDto {
  _$AudioDtoImpl(
      {this.imageUrl,
      this.title,
      this.artistName,
      this.audioUrl,
      this.isLiked});

  factory _$AudioDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioDtoImplFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final String? artistName;
  @override
  final String? audioUrl;
  @override
  final bool? isLiked;

  @override
  String toString() {
    return 'AudioDto(imageUrl: $imageUrl, title: $title, artistName: $artistName, audioUrl: $audioUrl, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioDtoImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, title, artistName, audioUrl, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioDtoImplCopyWith<_$AudioDtoImpl> get copyWith =>
      __$$AudioDtoImplCopyWithImpl<_$AudioDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioDtoImplToJson(
      this,
    );
  }
}

abstract class _AudioDto implements AudioDto {
  factory _AudioDto(
      {final String? imageUrl,
      final String? title,
      final String? artistName,
      final String? audioUrl,
      final bool? isLiked}) = _$AudioDtoImpl;

  factory _AudioDto.fromJson(Map<String, dynamic> json) =
      _$AudioDtoImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get title;
  @override
  String? get artistName;
  @override
  String? get audioUrl;
  @override
  bool? get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$AudioDtoImplCopyWith<_$AudioDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
