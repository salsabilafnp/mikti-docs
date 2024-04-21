import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 170,
                  height: 170,
                  color: Colors.purple,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.cyan,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
