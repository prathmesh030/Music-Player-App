part of 'liked_songs_cubit.dart';

@freezed
class LikedSongsState with _$LikedSongsState {
  const factory LikedSongsState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccess,
    required bool showPassword,
    required String errorMessage,
  }) = _LikedSongsState;
  factory LikedSongsState.initial() => LikedSongsState(
        errorMessage: '',
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        showPassword: false,
      );
}
