import "package:flutter/material.dart";

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(
              Icons.group,
            ),
            title: const Text('Create Community'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person_3,
            ),
            title: const Text('Handle Users'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

Drawer drawer(BuildContext context) {
  return Drawer(
    child: SafeArea(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(
              Icons.group,
            ),
            title: const Text('Create Community'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person_3,
            ),
            title: const Text('Handle Users'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
