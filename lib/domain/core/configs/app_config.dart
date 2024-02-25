import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;

  AppStateNotifier({
    required this.isAuthorized,
  });

  Future<void> notifyState() async {
    notifyListeners();
  }
}

class AppConfig extends InheritedWidget {
  final String appTitle;
  final String buildFlavor;
  final String apiBaseUrl;
  @override
  final Widget child;

  const AppConfig({
    super.key,
    required this.appTitle,
    required this.buildFlavor,
    required this.child,
    required this.apiBaseUrl,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
