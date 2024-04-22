import 'package:exercise_app/pages/info_page.dart';
import 'package:exercise_app/pages/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      drawer: _drawer(),
      body: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Warning!'),
                  content: const Text("Please, upload today's documentation"),
                  actions: [
                    TextButton(
                      child: const Text("Alright"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: const Text("No Data"),
        ),
      ),
      endDrawer: Container(
        alignment: Alignment.center,
        child: const Text('Version 1.0.0'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UploadPage(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}

AppBar _appBar(context) {
  return AppBar(
    title: const Text('Exercise'),
    backgroundColor: Color(0xFF5C5470),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const InfoPage()),
          );
        },
        icon: const Icon(Icons.info),
      ),
    ],
  );
}

Drawer _drawer() {
  return Drawer(
    child: ListView(
      children: [
        const DrawerHeader(
          child: Text("Header"),
        ),
        ListTile(
          leading: const Icon(Icons.people),
          title: const Text("Connections"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.directions_bus),
          title: const Text("Transportation"),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Log Out"),
          onTap: () {},
        ),
      ],
    ),
  );
}

BottomNavigationBar _bottomNavigationBar() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ],
  );
}
