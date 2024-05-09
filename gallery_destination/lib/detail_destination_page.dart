import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gallery_destination/components/destination.dart';

class DetailPage extends StatelessWidget {
  final Destination destination;

  const DetailPage({
    required this.destination,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      destination.imageUrl,
                      height: constraints.maxHeight / 2,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildDetailContent(),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        destination.imageUrl,
                        width: constraints.maxWidth / 3,
                        height: constraints.maxHeight / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: buildDetailContent(),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget buildDetailContent() {
    return Container(
      padding: const EdgeInsets.all(20),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              destination.name.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                size: 18,
              ),
              const SizedBox(width: 10),
              Text(
                destination.openDays,
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.access_time,
                size: 18,
              ),
              const SizedBox(width: 10),
              Text(
                destination.openHours,
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.attach_money_rounded,
                size: 18,
              ),
              const SizedBox(width: 10),
              Text(
                destination.ticketPrice,
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 18,
              ),
              const SizedBox(width: 10),
              Expanded(
                // Adjust to take available space
                child: Text(
                  destination.fullLocation,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            destination.description,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.clip,
          ),
        ],
      ),
    );
  }
}
