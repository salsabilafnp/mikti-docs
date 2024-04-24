import 'package:exercise_app/pages/history_page.dart';
import 'package:exercise_app/pages/setting_page.dart';
import 'package:exercise_app/pages/add_note_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      drawer: _drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello,",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "I'm your tracker-buddy!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Warning!'),
                      content: const Text(
                          "Please, create your first financial notes!"),
                      actions: [
                        TextButton(
                          child: const Text("Okay!"),
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
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoryPage(),
                  ),
                );
              },
              child: Text("Check the layout for data"),
            )
          ],
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
              builder: (context) => const AddNotePage(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar(context) {
    Color backgroundColor = const Color(0xFF5C5470);

    return AppBar(
      title: const Text('Exercise'),
      backgroundColor: backgroundColor,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingPage()),
            );
          },
          icon: const Icon(Icons.settings),
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
            leading: const Icon(Icons.attach_money),
            title: const Text("Financial"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.playlist_add_check_circle_outlined),
            title: const Text("Daily Planner"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notes_outlined),
            title: const Text("Notes"),
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
          icon: Icon(Icons.history),
          label: 'History',
        ),
      ],
    );
  }
}
