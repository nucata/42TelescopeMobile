import 'package:flutter/material.dart';

class NavigationModel {
  final IconData? icon;
  final String? name;

  NavigationModel({this.icon, this.name});
}

List<NavigationModel> navigationItems(BuildContext context) => [
      NavigationModel(icon: Icons.group, name: "Clubs"),
      NavigationModel(icon: Icons.person, name: "Profile"),
    ];
