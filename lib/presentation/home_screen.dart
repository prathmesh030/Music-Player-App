import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../application/home/home_cubit.dart';
import '../domain/core/helpers/seed_audios_db.dart';
import 'playing_now_screen.dart';
import 'widgets/current_playing_audio_tile.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/horizontal_audio_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeState.initial()),
      child: const HomeConsumer(),
    );
  }
}

class HomeConsumer extends StatelessWidget {
  const HomeConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            drawer: const CustomDrawer(),
            backgroundColor: Theme.of(context).colorScheme.primary,
            appBar: AppBar(
              elevation: 0,
              leadingWidth: 10.w,
              leading: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: SvgPicture.asset(
                        'assets/svgs/menu.svg',
                      ),
                    ),
                  );
                },
              ),
              title: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.5.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/search.svg',
                      width: 6.w,
                    ),
                  ],
                ),
              ),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.5.w, vertical: 2.h),
                        child: Text(
                          'Recommended for you',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 5.w,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            final audio = SeedAudiosDB.audios[i];

                            return HorizontalAudioCard(
                              audio: audio,
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return PlayingNowScreen(
                                    audioIndex: i,
                                  );
                                }));
                              },
                            );
                          },
                          itemCount: SeedAudiosDB.audios.length,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.5.w, vertical: 2.h),
                        child: Text(
                          'My Playlist',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 5.w,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            final audio = SeedAudiosDB.audios[i];

                            return HorizontalAudioCard(
                              audio: audio,
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return PlayingNowScreen(
                                    audioIndex: i,
                                  );
                                }));
                              },
                            );
                          },
                          itemCount: SeedAudiosDB.audios.length,
                        ),
                      ),
                      SizedBox(
                        height: 12.5.h,
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   bottom: 0,
                //   child: CurrentPlayingAudioTile(
                //     onTap: () {
                //       Navigator.of(context)
                //           .push(MaterialPageRoute(builder: (context) {
                //         return const PlayingNowScreen();
                //       }));
                //     },
                //   ),
                // )
              ],
            ));
      },
    );
  }
}
