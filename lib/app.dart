import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

import 'domain/core/configs/app_config.dart';
import 'domain/core/theme/theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'presentation/home_screen.dart';

class MainApp extends StatelessWidget with WidgetsBindingObserver {
  @override
  MainApp({super.key}) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: MusicPlayerTheme.themeData,
      home: const HomeScreen(),
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  AppStateNotifier appStateNotifier = AppStateNotifier(
    audioPlayer: AudioPlayer(),
    isAuthorized: true,
    favs: []
  );

  final AppConfig configuredApp = AppConfig(
    appTitle: appConfig.appTitle,
    apiBaseUrl: appConfig.apiBaseUrl,
    buildFlavor: appConfig.buildFlavor,
    child: ChangeNotifierProvider<AppStateNotifier>(
      create: (context) {
        return appStateNotifier;
      },
      child: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return MainApp();
        },
      ),
    ),
  );

  return runApp(configuredApp);
}
