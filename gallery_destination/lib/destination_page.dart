import 'package:flutter/material.dart';
import 'package:gallery_destination/components/destination.dart';
import 'package:gallery_destination/components/destination_grid.dart';
import 'package:gallery_destination/components/destination_list.dart';

class DestinationPage extends StatelessWidget {
  final List<Destination> destinations = List.filled(
    12,
    Destination(
      name: 'Curug Cimahi',
      location: 'Parongpong',
      imageUrl: 'assets/images/curug_cimahi.jpg',
      openDays: 'Senin - Minggu',
      openHours: '07:00 - 17:00',
      fullLocation:
          'Jl. Kolonel Masturi No.KM, 11, Cisarua, Kec. Parongpong, Kabupaten Bandung Barat, Jawa Barat',
      description:
          'Curug Cimahi adalah salah satu objek wisata alam yang berada di kawasan Bandung Barat. Objek ini menawarkan keindahan alam yang masih alami dan udara yang sejuk. Dengan luas sekitar 25 hektar, Curug Cimahi memiliki ketinggian air terjun sekitar 87 meter. Tidak hanya air terjun, Curug Cimahi juga memiliki hutan yang asri dan beragam flora dan fauna.',
      ticketPrice: 'Rp 20.000',
    ),
  );

  DestinationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
        backgroundColor: Colors.blue.shade400,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return buildListLayout();
            } else if (constraints.maxWidth < 900) {
              return buildGridLayout(4);
            } else {
              return buildGridLayout(6);
            }
          },
        ),
      ),
    );
  }

  // List View, screen width < 600
  Widget buildListLayout() {
    return ListView.builder(
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        return DestinationListItem(destination: destinations[index]);
      },
    );
  }

  // Grid View, screen width > 600
  Widget buildGridLayout(int crossAxisCount) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        return DestinationGridItem(destination: destinations[index]);
      },
    );
  }
}
