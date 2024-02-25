part of 'dummy_cubit.dart';

@freezed
class DummyState with _$DummyState {
  const factory DummyState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccess,
    required bool showPassword,
    required String errorMessage,
  }) = _DummyState;
  factory DummyState.initial() => DummyState(
        errorMessage: '',
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        showPassword: false,
      );
}
