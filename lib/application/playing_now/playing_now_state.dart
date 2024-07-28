part of 'playing_now_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: true)
@freezed
class PlayingNowState with _$PlayingNowState {
  const factory PlayingNowState({
    required bool isLoading,
    required bool isFailed,
    required bool isSuccess,
    required bool noUse,
    required bool showPassword,
    required int currentPageIndex,
    required String errorMessage,
    required AudioPlayer audioPlayer,
    AudioDto? currentAudio,
  }) = _PlayingNowState;
  factory PlayingNowState.initial() => PlayingNowState(
        errorMessage: '',
        noUse: false,
        audioPlayer: AudioPlayer(),
        currentPageIndex: 0,
        currentAudio: SeedAudiosDB.audios[0],
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        showPassword: false,
      );
}
