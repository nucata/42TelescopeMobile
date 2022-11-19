import 'package:clubs/clubs.dart';
import 'package:commons/commons.dart';
import 'package:commons/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final UserModel user = users[0];
    final GlobalKey<ScaffoldState> key = GlobalKey();
    return Builder(
      builder: (context) => Scaffold(
        key: key,
        appBar: appBar(title: "Profile", key: key),
        drawer: drawer(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.profilePic,
              onClicked: () {},
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 48),
            buildAbout(user),
            const SizedBox(
              height: 48,
            ),
            buildClubs(user)
          ],
        ),
      ),
    );
  }

  Widget buildName(UserModel user) => Column(
        children: [
          Text(
            user.intraName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            "Level ${user.level}",
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(UserModel user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Skills',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  '(${user.skills.length} found)',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              children: user.skills.map((e) {
                return SkillWidget(skill: e);
              }).toList(),
            ),
          ],
        ),
      );

  Widget buildClubs(UserModel user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Clubs',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  '(${user.clubs.length} found)',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (user.clubs.isNotEmpty)
              Column(
                children: user.clubs.map((e) {
                  return ClubWidget(club: e);
                }).toList(),
              ),
            if (user.clubs.isEmpty) const Text("No club found"),
          ],
        ),
      );
}
