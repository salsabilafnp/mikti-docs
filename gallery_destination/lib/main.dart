import 'package:flutter/material.dart';
import 'package:gallery_destination/auth/auth_page.dart';
import 'package:gallery_destination/auth/login_page.dart';
import 'package:gallery_destination/auth/register_page.dart';
import 'package:gallery_destination/pages/create_post_page.dart';
import 'package:gallery_destination/pages/home_page.dart';
import 'package:gallery_destination/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show Your Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF5C5470),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF5C5470),
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      routes: {
        '/auth': (context) => const AuthPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/settings': (context) => const SettingsPage(),
        '/create-post': (context) => const CreatePostPage(),
      },
      home: HomePage(),
    );
  }
}
