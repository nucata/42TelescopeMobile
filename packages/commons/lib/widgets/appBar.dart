import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

AppBar appBar({required String title, required GlobalKey<ScaffoldState> key}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(color: colorPrimary),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: colorPrimary,
      ),
      onPressed: () => key.currentState!.openDrawer(),
    ),
    iconTheme: IconThemeData(color: colorPrimary),
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    elevation: 0.0,
  );
}
