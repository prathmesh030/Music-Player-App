import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CurrentPlayingAudioTile extends StatelessWidget {
  final Function()? onTap;
  const CurrentPlayingAudioTile({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 9.h,
        width: 100.w,
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/imgs/believer.png',
              width: 18.w,
              height: 18.w,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 1.5.h,
                  left: 4.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Believer',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    Text('Imagine Dragon',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              overflow: TextOverflow.ellipsis,
                              color: const Color(0xffA5C0FF).withOpacity(0.7),
                            )),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.h, right: 8.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/prev.svg',
                    width: 5.w,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/pause.svg',
                    width: 6.w,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/next.svg',
                    width: 5.w,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
