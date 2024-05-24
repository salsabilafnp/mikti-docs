import 'package:exercise_app/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation screenOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: const CustomAppBar(pageTitle: 'Info Screen'),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Screen Size: ${screenSize.width.toStringAsFixed(2)}"),
              Text("Screen Orientation: $screenOrientation"),
            ],
          ),
        ),
      ),
    );
  }
}
