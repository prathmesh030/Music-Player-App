import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../application/playing_now/playing_now_cubit.dart';
import '../domain/core/helpers/generic_helpers.dart';
import '../domain/core/helpers/seed_audios_db.dart';

class PlayingNowScreen extends StatelessWidget {
  const PlayingNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayingNowCubit(PlayingNowState.initial())..init(),
      child: const PlayingNowConsumer(),
    );
  }
}

class PlayingNowConsumer extends StatelessWidget {
  const PlayingNowConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayingNowCubit, PlayingNowState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
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
                'Playing Now',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              centerTitle: true,
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  height: 30.h,
                  child: PageView.builder(
                    onPageChanged: (i) {
                      context.read<PlayingNowCubit>().onPageChange(
                          index: i, audioDto: SeedAudiosDB.audios[i]);
                    },
                    scrollDirection: Axis.horizontal,
                    controller: PageController(viewportFraction: 0.8),
                    itemBuilder: (context, i) {
                      final audio = SeedAudiosDB.audios[i];
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        width: 100.w,
                        height: 30.h,
                        child: Image.asset(
                          audio.imageUrl ?? '',
                          fit: BoxFit.fill,
                          scale: 1,
                        ),
                      );
                    },
                    itemCount: SeedAudiosDB.audios.length,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Column(
                            children: [
                              Text(
                                state.currentAudio!.title ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                state.currentAudio!.artistName ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: const Color(0xffA5C0FF),
                                    ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/svgs/heart.svg',
                            width: 5.w,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/low-vol.svg',
                            width: 5.w,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svgs/repeat.svg',
                                width: 5.w,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SvgPicture.asset(
                                'assets/svgs/shuffle-outline.svg',
                                width: 5.w,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StreamBuilder<Duration>(
                          stream: state.audioPlayer.positionStream,
                          builder: (context, snapshot) {
                            final duration = snapshot.data;

                            return Text(
                              duration != null
                                  ? GenericHelpers.getDurationFormat(duration)
                                  : '00:00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: const Color(0xFFA5C0FF)
                                        .withOpacity(0.7),
                                  ),
                            );
                          }),
                      StreamBuilder<Duration>(
                          stream: state.audioPlayer.positionStream,
                          builder: (context, snapshot) {
                            return Text(
                              state.audioPlayer.duration != null
                                  ? GenericHelpers.getDurationFormat(
                                      state.audioPlayer.duration ??
                                          Duration.zero)
                                  : '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: const Color(0xFFA5C0FF)
                                        .withOpacity(0.7),
                                  ),
                            );
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                StreamBuilder<Duration?>(
                  stream: state.audioPlayer.positionStream,
                  builder: (context, snapshot) {
                    final durationState = snapshot.data;
                    final progress = durationState ?? Duration.zero;
                    final buffered = state.audioPlayer.bufferedPosition;
                    final total = state.audioPlayer.duration ?? Duration.zero;
                    return ProgressBar(
                      bufferedBarColor: Colors.red,
                      thumbColor: Colors.blue,
                      baseBarColor: Colors.green,
                      progressBarColor: Colors.white,
                      progress: progress,
                      buffered: buffered,
                      total: total,
                      onSeek: (duration) {
                        context.read<PlayingNowCubit>().jumpToAudio(duration);
                      },
                    );
                  },
                ),
                const Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/prev.svg',
                      width: 8.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    StreamBuilder<PlayerState>(
                        stream: state.audioPlayer.playerStateStream,
                        builder: (context, snapshot) {
                          final playerState = snapshot.data;
                          final processingState = playerState?.processingState;
                          final playing = playerState?.playing;
                          if (processingState == ProcessingState.loading ||
                              processingState == ProcessingState.buffering) {
                            return Container(
                              margin: const EdgeInsets.all(8.0),
                              width: 64.0,
                              height: 64.0,
                              child: const CircularProgressIndicator(),
                            );
                          } else if (playing != true) {
                            return IconButton(
                              icon: Icon(
                                Icons.play_arrow,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              iconSize: 64.0,
                              onPressed: () {
                                context.read<PlayingNowCubit>().playAudio();
                              },
                            );
                          } else if (processingState !=
                              ProcessingState.completed) {
                            return IconButton(
                              icon: Icon(
                                Icons.pause,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              iconSize: 64.0,
                              onPressed: () {
                                context.read<PlayingNowCubit>().pauseAudio();
                              },
                            );
                          } else {
                            return IconButton(
                              icon: const Icon(Icons.replay),
                              iconSize: 64.0,
                              onPressed: () {
                                context
                                    .read<PlayingNowCubit>()
                                    .jumpToAudio(Duration.zero);
                              },
                            );
                          }
                        }),
                    SizedBox(
                      width: 8.w,
                    ),
                    SvgPicture.asset(
                      'assets/svgs/next.svg',
                      width: 8.w,
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
              ],
            ));
      },
    );
  }
}
