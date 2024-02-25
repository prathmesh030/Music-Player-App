import 'package:flutter/material.dart';

import 'app.dart';
import 'domain/core/configs/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appConfig = AppConfig(
    appTitle: 'Music Player - Dev',
    buildFlavor: 'dev',
    apiBaseUrl: '',
    child: Container(
      color: Colors.red,
    ),
  );
  appInitializer(appConfig);
}
