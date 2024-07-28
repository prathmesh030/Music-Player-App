import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

import '../../domain/core/helpers/seed_audios_db.dart';
import '../../infrastructure/dtos/audio_dto/audio_dto.dart';

part 'playing_now_state.dart';
part 'playing_now_cubit.freezed.dart';

class PlayingNowCubit extends Cubit<PlayingNowState> {
  PlayingNowCubit(super.initState);
  void init() {
    state.audioPlayer.playbackEventStream.listen(
      (event) {},
      onError: (e) {
        debugPrint('Error Audio Player: $e');
      },
    );

    playAudio(isSet: true);
  }

  void playAudio({bool isSet = false}) {
    if (isSet) {
      state.audioPlayer.setAsset(state.currentAudio!.audioUrl ?? '');
    }
    state.audioPlayer.play();
  }

  void pauseAudio() {
    state.audioPlayer.pause();
  }

  void jumpToAudio(Duration duration) {
    state.audioPlayer.seek(duration);
  }

  void setVolume(double vol) {
    state.audioPlayer.setVolume(vol);
  }

  void onPageChange({required index, AudioDto? audioDto}) {
    emit(state.copyWith(currentPageIndex: index, currentAudio: audioDto));
    playAudio(isSet: true);
  }

  void emitFromAnywhere(PlayingNowState state) {
    emit(state);
  }
}
