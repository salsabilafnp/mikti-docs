import 'package:flutter/material.dart';
import 'package:gallery_destination/auth/auth_page.dart';
import 'package:gallery_destination/components/custom_appbar.dart';
import 'package:gallery_destination/components/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageTitle: 'Register'),
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
                        'Create a New Account',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall!,
                      ),
                      const SizedBox(height: 30),
                      const CustomTextField(
                        inputLabel: 'Name',
                      ),
                      const CustomTextField(
                        inputLabel: 'Phone Number',
                      ),
                      const CustomTextField(
                        inputLabel: 'Email',
                      ),
                      const CustomTextField(
                        inputLabel: 'Password',
                      ),
                      const CustomTextField(
                        inputLabel: 'Confirm Password',
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        child: const Text('Register'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AuthPage(),
                            ),
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
