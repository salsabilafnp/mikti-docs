import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gallery_destination/components/custom_appbar.dart';
import 'package:gallery_destination/models/destination.dart';
import 'package:hovering/hovering.dart';

class DetailPage extends StatelessWidget {
  final Destination destination;

  const DetailPage({
    required this.destination,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageTitle: "Detail"),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    HoverWidget(
                      hoverChild: _buildHoveringImage(
                          context, constraints.maxHeight / 2, true),
                      child: _buildHoveringImage(
                          context, constraints.maxHeight / 3, false),
                      onHover: (_) {},
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: buildDetailContent(context),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Container(
              margin: const EdgeInsets.all(75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(
                      image: NetworkImage(destination.imageUrl),
                      width: constraints.maxWidth / 3,
                      height: constraints.maxHeight / 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(
                    child: buildDetailContent(context),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildHoveringImage(
    BuildContext context,
    double imageHeight,
    bool isHovering,
  ) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      height: isHovering ? imageHeight * 1.5 : imageHeight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(1, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: NetworkImage(destination.imageUrl),
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildDetailContent(BuildContext context) {
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
              destination.name,
              style: Theme.of(context).textTheme.headlineMedium!,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                size: 16,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  destination.openDays,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.access_time,
                size: 16,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  destination.openHours,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.attach_money_rounded,
                size: 16,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  destination.ticketPrice,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 16,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  destination.address,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                destination.description,
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
