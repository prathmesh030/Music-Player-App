import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../application/playing_now/playing_now_cubit.dart';
import '../domain/core/helpers/seed_audios_db.dart';

class PlayingNowScreen extends StatelessWidget {
  const PlayingNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayingNowCubit(PlayingNowState.initial()),
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
                      Text(
                        '00:00',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color(0xFFA5C0FF).withOpacity(0.7),
                            ),
                      ),
                      Text(
                        '04:00',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color(0xFFA5C0FF).withOpacity(0.7),
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 100.w,
                  height: 0.5.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffFAFAFA).withOpacity(0.3)),
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
                    SvgPicture.asset(
                      (1 == 1)
                          ? 'assets/svgs/pause.svg'
                          : 'assets/svgs/play.svg',
                      width: (1 == 1) ? 10.w : 8.w,
                    ),
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
