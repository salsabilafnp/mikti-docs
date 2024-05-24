import 'package:flutter/material.dart';
import 'package:gallery_destination/components/custom_appbar.dart';
import 'package:gallery_destination/components/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageTitle: 'Login'),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Login to Your Account',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall!,
                      ),
                      const SizedBox(height: 30),
                      const CustomTextField(
                        inputLabel: 'Email',
                      ),
                      const CustomTextField(
                        inputLabel: 'Password',
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/',
                            (Route<dynamic> route) => false,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
