import 'package:clubs/clubs.dart';
import 'package:clubs/views/all_groups_page.dart';
import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({super.key});

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    List<Club> clubsSubList = clubs.sublist(1, 3);
    final GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
      key: key,
      appBar: appBar(title: "Telescope", key: key),
      drawer: drawer(context),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Here are displayed your clubs",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: clubsSubList.length,
              itemBuilder: (context, index) {
                return ClubWidget(club: clubsSubList[index]);
              },
            ),
          ),
        ],
      )),
      floatingActionButton: Container(
          width: 200,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: elevatedButton(
              onPressed: () {
                push(context, const AllGroupsAvailable());
              },
              label: "See all clubs",
              isOutlined: true)),
    );
  }
}
