import 'package:flutter/material.dart';
import 'package:gallery_destination/models/destination.dart';
import 'package:gallery_destination/pages/detail_page.dart';

class DestinationListItem extends StatelessWidget {
  final Destination destination;

  const DestinationListItem({
    required this.destination,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(destination: destination),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(1, 2),
            ),
          ],
        ),
        margin: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                destination.imageUrl,
                width: 200,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(destination.location),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
