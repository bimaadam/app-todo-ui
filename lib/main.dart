import 'package:flutter/material.dart';
import 'package:flutter_app_todo/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Todo',
      themeMode: ThemeMode.system, // Ikuti mode sistem
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light, // Harus sama biar ga error
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark, // Harus sama biar ga error
        ),
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 2, 23, 41), // Background dark
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white), // Warna teks biar kontras
        ),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
