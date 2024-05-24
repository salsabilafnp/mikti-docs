import 'package:exercise_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF98C1D9),
          surface: const Color(0xFF98C1D9),
          primary: const Color(0xFF5C5470),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
