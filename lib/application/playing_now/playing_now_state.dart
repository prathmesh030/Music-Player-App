part of 'playing_now_cubit.dart';

@freezed
class PlayingNowState with _$PlayingNowState {
  const factory PlayingNowState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccess,
    required bool showPassword,
    required int currentPageIndex,
    required String errorMessage,
    AudioDto? currentAudio,
  }) = _PlayingNowState;
  factory PlayingNowState.initial() => PlayingNowState(
        errorMessage: '',
        currentPageIndex: 0,
        currentAudio: SeedAudiosDB.audios[0],
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        showPassword: false,
      );
}
