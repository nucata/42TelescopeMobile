import 'package:clubs/clubs.dart';
import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

class AllGroupsAvailable extends StatefulWidget {
  const AllGroupsAvailable({super.key});

  @override
  State<AllGroupsAvailable> createState() => _AllGroupsAvailableState();
}

class _AllGroupsAvailableState extends State<AllGroupsAvailable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(170),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 13),
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFieldWidget(
                        label: "See available clubs",
                        text: "Recherche...",
                        onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          )),
      body: SafeArea(
          child: ListView.builder(
        itemCount: clubs.length,
        itemBuilder: (context, index) {
          return ClubWidget(club: clubs[index]);
        },
      )),
    );
  }
}
