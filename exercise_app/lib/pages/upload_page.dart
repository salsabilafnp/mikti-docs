import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Elevated Button
          // ElevatedButton(
          //   child: const Center(
          //     child: Text('Upload'),
          //   ),
          //   onPressed: () {},
          // ),
          // Icon Button
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.upload_file),
          )
        ],
      ),
    );
  }
}
