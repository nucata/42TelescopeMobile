import 'package:flutter/material.dart';

class NavigationModel {
  final IconData? icon;
  final String? name;

  NavigationModel({this.icon, this.name});
}

List<NavigationModel> navigationItems(BuildContext context) => [
      NavigationModel(icon: Icons.home, name: "Home"),
      NavigationModel(icon: Icons.person, name: "Profile"),
    ];
