import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final VoidCallback? onNotificationPressed;
  static bool centerTitle = true;

  const CustomAppBar({
    super.key,
    required this.pageTitle,
    this.onNotificationPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final isHomePage = pageTitle == 'Home';

    return AppBar(
      title: Text(pageTitle),
      centerTitle: centerTitle,
      automaticallyImplyLeading: isHomePage ? false : true,
      actions: _buildActions(context, isHomePage),
    );
  }

  List<Widget> _buildActions(BuildContext context, bool isHomePage) {
    List<Widget> actions = [];

    if (isHomePage) {
      actions.add(
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),
      );
    }
    return actions;
  }
}
