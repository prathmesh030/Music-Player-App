import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../infrastructure/dtos/audio_dto/audio_dto.dart';

class HorizontalAudioCard extends StatelessWidget {
  const HorizontalAudioCard({
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
      child: SizedBox(
        width: 50.w,
        height: 33.h,
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
      ),
    );
  }
}
