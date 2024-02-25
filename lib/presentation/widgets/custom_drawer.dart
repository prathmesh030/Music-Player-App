import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../liked_songs_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            SizedBox(
              height: 7.h,
            ),
            Builder(builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).closeDrawer();
                    },
                    child: SvgPicture.asset(
                      'assets/svgs/close.svg',
                      width: 6.w,
                    ),
                  ),
                ],
              );
            }),
            SizedBox(
              height: 5.h,
            ),
            DrawerItem(
              icon: 'user',
              name: 'Profile',
              onTap: () {},
            ),
            SizedBox(
              height: 3.h,
            ),
            DrawerItem(
              icon: 'heart',
              name: 'Liked Songs',
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const LikedSongsScreen();
                }));
              },
            ),
            SizedBox(
              height: 3.h,
            ),
            DrawerItem(
              icon: 'contact-us',
              name: 'Contact us',
              onTap: () {},
            ),
            SizedBox(
              height: 3.h,
            ),
            DrawerItem(
              icon: 'settings',
              name: 'Settings',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String icon;
  final String name;
  final Function()? onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/svgs/$icon.svg',
              width: 6.w,
            ),
            SizedBox(
              width: 7.w,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
