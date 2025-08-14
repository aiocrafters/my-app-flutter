// ignore_for_file: unnecessary_underscores

import 'package:flutter/material.dart';
import 'splash_screen.dart';

// Global Theme Controller for Dark/Light mode
ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, currentMode, __) {
        return MaterialApp(
          title: 'AIO Crafters',
          debugShowCheckedModeBanner: false,

          // Light Theme
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.black87),
              bodyMedium: TextStyle(color: Colors.black87),
              titleLarge: TextStyle(color: Colors.black87),
              titleMedium: TextStyle(color: Colors.black87),
              titleSmall: TextStyle(color: Colors.black87),
              labelLarge: TextStyle(color: Colors.black87),
              labelMedium: TextStyle(color: Colors.black87),
              labelSmall: TextStyle(color: Colors.black87),
            ),
            colorScheme: const ColorScheme.light(
              primary: Colors.deepPurple,
              secondary: Colors.deepPurpleAccent,
            ),
          ),

          // Dark Theme - white text on black backgrounds
          darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              titleLarge: TextStyle(color: Colors.white),
              titleMedium: TextStyle(color: Colors.white),
              titleSmall: TextStyle(color: Colors.white),
              labelLarge: TextStyle(color: Colors.white),
              labelMedium: TextStyle(color: Colors.white),
              labelSmall: TextStyle(color: Colors.white),
            ),
            colorScheme: const ColorScheme.dark(
              primary: Colors.deepPurple,
              secondary: Colors.deepPurpleAccent,
            ),
          ),

          themeMode: currentMode, // Controlled by Settings toggle
          home: const SplashScreen(),
        );
      },
    );
  }
}
