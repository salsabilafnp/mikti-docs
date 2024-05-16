import 'dart:math';
import 'package:flutter/material.dart';

double randomBorderRadius() {
  return Random().nextDouble() * 20;
}

double randomMargin() {
  return Random().nextDouble() * 20;
}

Color randomColor() {
  return Color.fromARGB(
    255,
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
  );
}

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  late double borderRadius;
  late double margin;
  late Color color;

  final double boxSize = 100.0;
  double posX = 0.0;
  double posY = 0.0;

  @override
  void initState() {
    borderRadius = randomBorderRadius();
    margin = randomMargin();
    color = randomColor();
    super.initState();
  }

  void changeState() {
    setState(() {
      borderRadius = randomBorderRadius();
      margin = randomMargin();
      color = randomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => changeState(),
                onPanUpdate: (details) {
                  setState(() {
                    posX += details.delta.dx;
                    posY += details.delta.dy;
                  });
                },
                child: SizedBox(
                  width: boxSize,
                  height: boxSize,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 2000),
                    margin: EdgeInsets.all(margin),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
