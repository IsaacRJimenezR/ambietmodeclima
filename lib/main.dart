import 'package:flutter/material.dart';
import 'package:ambietmodeclima/screens/ambient_screen.dart';
import 'package:ambietmodeclima/screens/start_screen.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, visualDensity: VisualDensity.compact),
      home: const WatchScreen(),
    );
  }
}

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (context, shape, child) {
        return AmbientMode(
          builder: (context, mode, child) {
            if (mode == WearMode.active) {
              return const StartScreen();
            } else {
              return const AmbientWatchFace();
            }
          },
        );
      },
    );
  }
}
