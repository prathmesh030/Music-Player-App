import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'liked_songs_state.dart';
part 'liked_songs_cubit.freezed.dart';

class LikedSongsCubit extends Cubit<LikedSongsState> {
  LikedSongsCubit(super.initState);

  void hello() {
    debugPrint('hello world');
  }
}
