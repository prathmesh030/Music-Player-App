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
    required PageController pageController,
    required AppStateNotifier appStateNotifier,
    AudioDto? currentAudio,
  }) = _PlayingNowState;
  factory PlayingNowState.initial({
    required AppStateNotifier appStateNotifier,
    required int index
  }) => PlayingNowState(
        errorMessage: '',
        noUse: false,
        pageController: PageController(initialPage: index, viewportFraction: 0.8),
        currentPageIndex: index,
        appStateNotifier: appStateNotifier,
        currentAudio: SeedAudiosDB.audios[index],
        isFailed: false,
        isLoading: false,
        isSuccess: false,
        showPassword: false,
      );
}
