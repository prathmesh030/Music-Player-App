import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

import '../../../infrastructure/dtos/audio_dto/audio_dto.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;
  AudioPlayer audioPlayer;
  List<AudioDto> favs;

  AppStateNotifier({
    required this.isAuthorized,
    required this.audioPlayer,
    required this.favs,
  });

  Future<void> notifyState() async {
    notifyListeners();
  }

  Future<void> updateFavAudios({
    required AudioDto audioDto,
    bool isRemove = false,
  }) async {
    if (isRemove) {
      favs.removeWhere(
        (el) => el.id == audioDto.id,
      );
    } else {
      favs.add(audioDto);
    }
    notifyListeners();
  }
}

class AppConfig extends InheritedWidget {
  final String appTitle;
  final String buildFlavor;
  final String apiBaseUrl;
  @override
  final Widget child;

  const AppConfig({
    super.key,
    required this.appTitle,
    required this.buildFlavor,
    required this.child,
    required this.apiBaseUrl,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
