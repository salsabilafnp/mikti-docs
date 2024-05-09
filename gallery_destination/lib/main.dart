import 'package:flutter/material.dart';
import 'package:gallery_destination/destination_page.dart';
// import 'package:gallery_destination/detail_destination_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Destination Gallery',
      debugShowCheckedModeBanner: false,
      home: DestinationPage(),
    );
  }
}
