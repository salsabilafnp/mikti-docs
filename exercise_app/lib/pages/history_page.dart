import 'package:exercise_app/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageTitle: "Your History"),
      body: LayoutBuilder(builder: (BuildContext context, constraint) {
        if (constraint.maxWidth < 600) {
          return ListView(
            children: _generateConstraint(),
          );
        } else if (constraint.maxWidth < 900) {
          return GridView.count(
            crossAxisCount: 2,
            children: _generateConstraint(),
          );
        } else {
          return GridView.count(
            crossAxisCount: 4,
            children: _generateConstraint(),
          );
        }
      }),
    );
  }

  List<Widget> _generateConstraint() {
    return List<Widget>.generate(10, (index) {
      return Container(
        color: const Color(0xFF352F44),
        margin: const EdgeInsets.all(10),
        height: 150,
      );
    });
  }
}
