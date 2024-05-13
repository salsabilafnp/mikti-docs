import 'package:flutter/material.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: 'image_animation',
        child: Image.asset(
          'assets/images/hero_image.jpg',
        ),
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     ElevatedButton(
      //       child: const Text("Create"),
      //       onPressed: () {},
      //     ),
      //     const SizedBox(height: 10),
      //     OutlinedButton(
      //       onPressed: () {},
      //       child: const Text("Cancel"),
      //     ),
      //   ],
      // ),
    );
  }
}
