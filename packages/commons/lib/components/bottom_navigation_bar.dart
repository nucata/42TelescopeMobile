import 'package:clubs/clubs.dart';
import 'package:commons/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

import '../commons.dart';

class BottomNavigationBarComp extends StatefulWidget {
  final UserModel? user;
  const BottomNavigationBarComp({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  BottomNavigationBarCompState createState() => BottomNavigationBarCompState();
}

class BottomNavigationBarCompState extends State<BottomNavigationBarComp> {
  int _selectedItem = 0;

  final tabs = [
    const ClubsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: navigationItems(context)
            .map((navigationItem) => BottomNavigationBarItem(
                icon: Icon(
                  navigationItem.icon,
                ),
                label: navigationItem.name))
            .toList(),
        selectedLabelStyle:
            const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        selectedItemColor: colorPrimary,
        selectedIconTheme: IconThemeData(color: colorPrimary),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItem,
        onTap: _onItemPressed,
      ),
    );
  }

  void _onItemPressed(int index) {
    setState(() {
      _selectedItem = index;
    });
  }
}
