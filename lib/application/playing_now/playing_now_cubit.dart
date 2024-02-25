import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/helpers/seed_audios_db.dart';
import '../../infrastructure/dtos/audio_dto/audio_dto.dart';

part 'playing_now_state.dart';
part 'playing_now_cubit.freezed.dart';

class PlayingNowCubit extends Cubit<PlayingNowState> {
  PlayingNowCubit(super.initState);

  void onPageChange({required index, AudioDto? audioDto}) {
    emit(state.copyWith(currentPageIndex: index, currentAudio: audioDto));
  }
}
