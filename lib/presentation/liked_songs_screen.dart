import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../application/liked_songs/liked_songs_cubit.dart';
import '../domain/core/configs/app_config.dart';
import '../domain/core/helpers/seed_audios_db.dart';
import '../infrastructure/dtos/audio_dto/audio_dto.dart';
import 'playing_now_screen.dart';
import 'widgets/current_playing_audio_tile.dart';

class LikedSongsScreen extends StatelessWidget {
  const LikedSongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LikedSongsCubit(LikedSongsState.initial()),
      child: const LikedSongsConsumer(),
    );
  }
}

class LikedSongsConsumer extends StatelessWidget {
  const LikedSongsConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LikedSongsCubit, LikedSongsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
                backgroundColor: Theme.of(context).colorScheme.primary,
                appBar: AppBar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  title: Text(
                    'Liked Songs',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  centerTitle: true,
                ),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: GridView.builder(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.only(
                                right: 5.w, left: 5.w, top: 4.h, bottom: 12.h),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.75,
                              mainAxisSpacing: 3.5.h,
                              crossAxisSpacing: 5.w,
                            ),
                            itemCount: Provider.of<AppStateNotifier>(context)
                                .favs
                                .length,
                            itemBuilder: (c, i) {
                              final audio =
                                  Provider.of<AppStateNotifier>(context)
                                      .favs[i];
                              return LikedSongCard(
                                audio: audio,
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return PlayingNowScreen(
                                      audioIndex: i,
                                    );
                                  }));
                                },
                              );
                            })),
                  ],
                )),
            // Positioned(
            //   bottom: 0,
            //   child: CurrentPlayingAudioTile(
            //     onTap: () {
            //       Navigator.of(context)
            //           .push(MaterialPageRoute(builder: (context) {
            //         return const PlayingNowScreen(audioIndex: ,);
            //       }));
            //     },
            //   ),
            // )
          ],
        );
      },
    );
  }
}

class LikedSongCard extends StatelessWidget {
  const LikedSongCard({
    super.key,
    required this.audio,
    this.onTap,
  });

  final AudioDto audio;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2.5.w),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                audio.imageUrl!,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 1.2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Text(
              audio.title ?? '',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    overflow: TextOverflow.ellipsis,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
          SizedBox(
            height: 0.25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Text(audio.artistName ?? '',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      overflow: TextOverflow.ellipsis,
                      color: const Color(0xffA5C0FF).withOpacity(0.7),
                    )),
          ),
        ],
      ),
    );
  }
}
