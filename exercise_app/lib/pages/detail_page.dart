import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final double boxSize = 150.0;
  int numOfSingleTap = 0;
  int numOfDoubleTap = 0;
  int numOfLongPress = 0;

  double posX = 0.0;
  double posY = 0.0;

  @override
  Widget build(BuildContext context) {
    if (posX == 0 && posY == 0) {
      centerPosition(context);
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: posX,
            top: posY,
            child: GestureDetector(
              // onVerticalDragUpdate: (details) {
              //   setState(() {
              //     double verticalPosition = details.delta.dy;
              //     posY += verticalPosition;
              //     // print(details);
              //   });
              // },
              // onHorizontalDragUpdate: (details) {
              //   setState(() {
              //     double horizontalPosition = details.delta.dx;
              //     posX += horizontalPosition;
              //     // print(details);
              //   });
              // },
              onPanUpdate: (details) {
                setState(() {
                  posX += details.delta.dx;
                  posY += details.delta.dy;
                  print(details);
                });
              },
              onTap: () {
                setState(() {
                  numOfSingleTap++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  numOfDoubleTap++;
                });
              },
              onLongPress: () {
                setState(() {
                  numOfLongPress++;
                });
              },
              child: Container(
                width: boxSize,
                height: boxSize,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Text(
        "Taps: $numOfSingleTap, Double Taps: $numOfDoubleTap, Long Press: $numOfLongPress",
      ),
    );
  }

  void centerPosition(BuildContext context) {
    posX = (MediaQuery.of(context).size.width - boxSize) / 2;
    posY = (MediaQuery.of(context).size.height - boxSize) / 2;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
}
