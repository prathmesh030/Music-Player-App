import 'package:uuid/uuid.dart';

import '../../../infrastructure/dtos/audio_dto/audio_dto.dart';

class SeedAudiosDB {
  static List<AudioDto> audios = [
    AudioDto(
      id: const Uuid().v4(),
      title: 'Believer',
      artistName: 'IMAGINE DRAGON',
      imageUrl: 'assets/imgs/believer.png',
      audioUrl: 'https://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Kangaroo_MusiQue_-_The_Neverwritten_Role_Playing_Game.mp3',
      isLiked: false,
    ),
    AudioDto(
      id: const Uuid().v4(),
      title: 'Dream On',
      artistName: 'ROGER TERRY',
      imageUrl: 'assets/imgs/dream_on.png',
      audioUrl: 'https://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Sevish_-__nbsp_.mp3',
      isLiked: false,
    ),
    AudioDto(
      id: const Uuid().v4(),
      title: 'Shortwave',
      artistName: 'RYAN GRIGDRY',
      imageUrl: 'assets/imgs/shortwave.png',
      audioUrl: 'https://commondatastorage.googleapis.com/codeskulptor-assets/Evillaugh.ogg',
      isLiked: false,
    ),
    AudioDto(
      id: const Uuid().v4(),
      title: 'Origins',
      artistName: 'IMAGINE DRAGON',
      imageUrl: 'assets/imgs/origins.png',
      audioUrl: 'https://commondatastorage.googleapis.com/codeskulptor-assets/Epoq-Lepidoptera.ogg',
      isLiked: false,
    ),
    AudioDto(
      id: const Uuid().v4(),
      title: 'Monsters Go Bump',
      artistName: 'ERIKA RECINOS',
      imageUrl: 'assets/imgs/monsters.png',
      audioUrl: 'https://codeskulptor-demos.commondatastorage.googleapis.com/pang/paza-moduless.mp3',
      isLiked: false,
    ),
    AudioDto(
      id: const Uuid().v4(),
      title: 'Moment Apart',
      artistName: 'ODESZA',
      imageUrl: 'assets/imgs/moment.png',
      audioUrl: 'https://codeskulptor-demos.commondatastorage.googleapis.com/GalaxyInvaders/theme_01.mp3',
      isLiked: false,
    ),
    AudioDto(
      id: const Uuid().v4(),
      title: 'Artists',
      artistName: 'GOD',
      imageUrl: 'assets/imgs/artists.png',
      audioUrl: 'https://commondatastorage.googleapis.com/codeskulptor-demos/riceracer_assets/music/race1.ogg',
      isLiked: false,
    ),
    AudioDto(
      id: const Uuid().v4(),
      title: 'Nights Changes',
      artistName: 'ONE DIRECTION',
      imageUrl: 'assets/imgs/vaporwave.png',
      audioUrl: 'https://commondatastorage.googleapis.com/codeskulptor-demos/riceracer_assets/music/win.ogg',
      isLiked: false,
    ),
  ];
}
