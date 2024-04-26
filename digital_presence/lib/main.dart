import 'package:digital_presence/digital_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Digital Card',
      debugShowCheckedModeBanner: false,
      home: DigitalCard(),
    );
  }
}
