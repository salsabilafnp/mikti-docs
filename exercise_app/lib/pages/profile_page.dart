import 'package:exercise_app/components/custom_appbar.dart';
import 'package:exercise_app/pages/info_screen.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageTitle: 'Profile'),
      body: Center(
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                // Lebar layar lebih dari 600, layout horizontal
                if (constraints.maxWidth > 600) {
                  return buildHorizontalLayout();
                }
                // Lebar layar kurang dari 600, layout vertikal
                else {
                  return buildVerticalLayout();
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const InfoScreen()),
                );
              },
              child: const Text("Information Screen"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHorizontalLayout() {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 500,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/ava.jpg'),
              radius: 50,
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama
                  Text(
                    'Salsabila Febrianty Nurul Putri',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Jabatan
                  Text(
                    'Mobile Developer (Flutter)',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  // No. HP
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 14,
                      ),
                      SizedBox(width: 10),
                      Text('+62 822-9522-5343'),
                    ],
                  ),
                  SizedBox(height: 5),
                  // Email
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 14,
                      ),
                      SizedBox(width: 10),
                      Text('john.doe@example.com'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildVerticalLayout() {
    return Card(
      color: const Color(0xFFE5DFD8),
      margin: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 45,
        ),
        width: 300,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/ava.jpg'),
              radius: 50,
            ),
            SizedBox(height: 20),
            // Nama
            Text(
              'Salsabila Febrianty Nurul Putri',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            // Jabatan
            Text(
              'Mobile Developer (Flutter)',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            // No. HP
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  size: 14,
                ),
                SizedBox(width: 5),
                Text('+62 822-9522-5343'),
              ],
            ),
            SizedBox(height: 5),
            // Email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  size: 14,
                ),
                SizedBox(width: 10),
                Text('john.doe@example.com'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
