import 'package:flutter/material.dart';
import 'package:mobile_app/models/models.dart';

class HomePage extends StatefulWidget {
  final UserModel userModel;
  const HomePage({super.key, required this.userModel});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
