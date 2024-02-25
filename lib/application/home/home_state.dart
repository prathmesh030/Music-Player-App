part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccess,
    required bool showPassword,
    required String errorMessage,
  }) = _HomeState;
  factory HomeState.initial() => HomeState(
        errorMessage: '',
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        showPassword: false,
      );
}
