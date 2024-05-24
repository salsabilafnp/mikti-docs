import 'package:flutter/material.dart';
import 'package:gallery_destination/components/custom_appbar.dart';
import 'package:gallery_destination/components/destination_grid.dart';
import 'package:gallery_destination/components/destination_list.dart';
import 'package:gallery_destination/models/destination.dart';

class HomePage extends StatelessWidget {
  final List<Destination> destinations = List.filled(
    12,
    Destination(
      name: 'Curug Cimahi',
      location: 'Parongpong',
      imageUrl:
          'https://s3-ap-southeast-1.amazonaws.com/cntres-assets-ap-southeast-1-250226768838-cf675839782fd369/imageResource/2020/05/14/1589469648745-c3332d476964f1dfdfedbc4dfddfcad9.jpeg',
      openDays: 'Senin - Minggu',
      openHours: '07:00 - 17:00',
      address:
          'Jl. Kolonel Masturi No.KM, 11, Cisarua, Kec. Parongpong, Kabupaten Bandung Barat, Jawa Barat',
      description:
          'Curug Cimahi adalah salah satu objek wisata alam yang berada di kawasan Bandung Barat. Objek ini menawarkan keindahan alam yang masih alami dan udara yang sejuk. Dengan luas sekitar 25 hektar, Curug Cimahi memiliki ketinggian air terjun sekitar 87 meter. Tidak hanya air terjun, Curug Cimahi juga memiliki hutan yang asri dan beragam flora dan fauna.',
      ticketPrice: 'Rp 20.000',
    ),
  );

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageTitle: 'Home'),
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
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text("Create New Post"),
        onPressed: () {
          Navigator.pushNamed(context, '/create-post');
        },
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
