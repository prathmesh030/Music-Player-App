// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_songs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikedSongsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikedSongsStateCopyWith<LikedSongsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedSongsStateCopyWith<$Res> {
  factory $LikedSongsStateCopyWith(
          LikedSongsState value, $Res Function(LikedSongsState) then) =
      _$LikedSongsStateCopyWithImpl<$Res, LikedSongsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccess,
      bool showPassword,
      String errorMessage});
}

/// @nodoc
class _$LikedSongsStateCopyWithImpl<$Res, $Val extends LikedSongsState>
    implements $LikedSongsStateCopyWith<$Res> {
  _$LikedSongsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccess = null,
    Object? showPassword = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikedSongsStateImplCopyWith<$Res>
    implements $LikedSongsStateCopyWith<$Res> {
  factory _$$LikedSongsStateImplCopyWith(_$LikedSongsStateImpl value,
          $Res Function(_$LikedSongsStateImpl) then) =
      __$$LikedSongsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccess,
      bool showPassword,
      String errorMessage});
}

/// @nodoc
class __$$LikedSongsStateImplCopyWithImpl<$Res>
    extends _$LikedSongsStateCopyWithImpl<$Res, _$LikedSongsStateImpl>
    implements _$$LikedSongsStateImplCopyWith<$Res> {
  __$$LikedSongsStateImplCopyWithImpl(
      _$LikedSongsStateImpl _value, $Res Function(_$LikedSongsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccess = null,
    Object? showPassword = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LikedSongsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LikedSongsStateImpl
    with DiagnosticableTreeMixin
    implements _LikedSongsState {
  const _$LikedSongsStateImpl(
      {required this.isLoading,
      required this.isFailed,
      required this.isSuccess,
      required this.showPassword,
      required this.errorMessage});

  @override
  final bool isLoading;
  @override
  final bool isFailed;
  @override
  final bool isSuccess;
  @override
  final bool showPassword;
  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LikedSongsState(isLoading: $isLoading, isFailed: $isFailed, isSuccess: $isSuccess, showPassword: $showPassword, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LikedSongsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isFailed', isFailed))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('showPassword', showPassword))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedSongsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isFailed, isSuccess, showPassword, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedSongsStateImplCopyWith<_$LikedSongsStateImpl> get copyWith =>
      __$$LikedSongsStateImplCopyWithImpl<_$LikedSongsStateImpl>(
          this, _$identity);
}

abstract class _LikedSongsState implements LikedSongsState {
  const factory _LikedSongsState(
      {required final bool isLoading,
      required final bool isFailed,
      required final bool isSuccess,
      required final bool showPassword,
      required final String errorMessage}) = _$LikedSongsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isFailed;
  @override
  bool get isSuccess;
  @override
  bool get showPassword;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LikedSongsStateImplCopyWith<_$LikedSongsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
