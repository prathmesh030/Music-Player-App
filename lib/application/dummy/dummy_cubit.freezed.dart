// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dummy_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DummyState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DummyStateCopyWith<DummyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DummyStateCopyWith<$Res> {
  factory $DummyStateCopyWith(
          DummyState value, $Res Function(DummyState) then) =
      _$DummyStateCopyWithImpl<$Res, DummyState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccess,
      bool showPassword,
      String errorMessage});
}

/// @nodoc
class _$DummyStateCopyWithImpl<$Res, $Val extends DummyState>
    implements $DummyStateCopyWith<$Res> {
  _$DummyStateCopyWithImpl(this._value, this._then);

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
abstract class _$$DummyStateImplCopyWith<$Res>
    implements $DummyStateCopyWith<$Res> {
  factory _$$DummyStateImplCopyWith(
          _$DummyStateImpl value, $Res Function(_$DummyStateImpl) then) =
      __$$DummyStateImplCopyWithImpl<$Res>;
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
class __$$DummyStateImplCopyWithImpl<$Res>
    extends _$DummyStateCopyWithImpl<$Res, _$DummyStateImpl>
    implements _$$DummyStateImplCopyWith<$Res> {
  __$$DummyStateImplCopyWithImpl(
      _$DummyStateImpl _value, $Res Function(_$DummyStateImpl) _then)
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
    return _then(_$DummyStateImpl(
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

class _$DummyStateImpl with DiagnosticableTreeMixin implements _DummyState {
  const _$DummyStateImpl(
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
    return 'DummyState(isLoading: $isLoading, isFailed: $isFailed, isSuccess: $isSuccess, showPassword: $showPassword, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DummyState'))
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
            other is _$DummyStateImpl &&
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
  _$$DummyStateImplCopyWith<_$DummyStateImpl> get copyWith =>
      __$$DummyStateImplCopyWithImpl<_$DummyStateImpl>(this, _$identity);
}

abstract class _DummyState implements DummyState {
  const factory _DummyState(
      {required final bool isLoading,
      required final bool isFailed,
      required final bool isSuccess,
      required final bool showPassword,
      required final String errorMessage}) = _$DummyStateImpl;

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
  _$$DummyStateImplCopyWith<_$DummyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
