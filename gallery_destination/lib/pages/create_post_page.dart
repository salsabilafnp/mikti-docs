import 'package:flutter/material.dart';
import 'package:gallery_destination/components/custom_appbar.dart';
import 'package:gallery_destination/components/custom_text_field.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageTitle: 'Create Post'),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const CustomTextField(
                      inputLabel: 'Name',
                    ),
                    const CustomTextField(
                      inputLabel: 'Open Days',
                    ),
                    const CustomTextField(
                      inputLabel: 'Open Hours',
                    ),
                    const CustomTextField(
                      inputLabel: 'Location',
                    ),
                    const CustomTextField(
                      inputLabel: 'Address',
                    ),
                    const CustomTextField(
                      inputLabel: 'Ticket Price',
                    ),
                    const CustomTextField(
                      inputLabel: 'Image URL',
                    ),
                    const CustomTextField(
                      inputLabel: 'Description',
                    ),
                    const SizedBox(height: 20),
                    FilledButton(
                      child: const Text('Create'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
