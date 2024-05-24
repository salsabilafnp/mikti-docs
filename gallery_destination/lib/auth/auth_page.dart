import 'package:flutter/material.dart';
import 'package:gallery_destination/auth/login_page.dart';
import 'package:gallery_destination/auth/register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Travel Buddy',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: const Color(0xFF5C5470)),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Find your destination places for your travel plans',
                        style: Theme.of(context).textTheme.bodyLarge!,
                      ),
                      const SizedBox(height: 150),
                      ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        child: const Text('I\'m a new user, create an account'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
