import 'package:dart_vlc/dart_vlc.dart';
import 'package:flutter/material.dart';
import 'package:installer/screens/welcome.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  DartVLC.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    title: "System install",
    fullScreen: true,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FMNX install',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      themeMode: ThemeMode.dark,
      home: const WelcomeContent(),
    );
  }
}
