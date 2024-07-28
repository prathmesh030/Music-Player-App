import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/configs/app_config.dart';
import '../../domain/core/helpers/seed_audios_db.dart';
import '../../infrastructure/dtos/audio_dto/audio_dto.dart';

part 'playing_now_state.dart';
part 'playing_now_cubit.freezed.dart';

class PlayingNowCubit extends Cubit<PlayingNowState> {
  PlayingNowCubit(super.initState);
  void init() {
    if (state.appStateNotifier.audioPlayer.playing) {
      return;
    }

    state.appStateNotifier.audioPlayer.playbackEventStream.listen(
      (event) {},
      onError: (e) {
        debugPrint('Error Audio Player: $e');
      },
    );

    playAudio(isSet: true);
  }

  void playAudio({bool isSet = false}) {
    if (isSet) {
      state.appStateNotifier.audioPlayer
          .setUrl(state.currentAudio!.audioUrl ?? '');
    }
    state.appStateNotifier.audioPlayer.play();
  }

  void pauseAudio() {
    state.appStateNotifier.audioPlayer.pause();
  }

  void jumpToAudio(Duration duration) {
    state.appStateNotifier.audioPlayer.seek(duration);
  }

  void toggleFav() {
    final foundIndex = state.appStateNotifier.favs
        .indexWhere((el) => el.id == state.currentAudio!.id);
    if (foundIndex == -1) {
      state.appStateNotifier.updateFavAudios(audioDto: state.currentAudio!);
    } else {
      state.appStateNotifier.updateFavAudios(
        audioDto: state.currentAudio!,
        isRemove: true,
      );
    }
  }

  void setVolume(double vol) {
    state.appStateNotifier.audioPlayer.setVolume(vol);
  }

  void onPageChange({required index, AudioDto? audioDto}) {
    emit(state.copyWith(currentPageIndex: index, currentAudio: audioDto));
    playAudio(isSet: true);
  }

  void emitFromAnywhere(PlayingNowState state) {
    emit(state);
  }
}
