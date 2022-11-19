import 'package:clubs/clubs.dart';
import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ClubDetails extends StatefulWidget {
  final Club club;

  const ClubDetails({Key? key, required this.club}) : super(key: key);

  @override
  ClubDetailsState createState() => ClubDetailsState();
}

class ClubDetailsState extends State<ClubDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300.0,
                    width: double.infinity,
                    color: colorPrimary.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image(
                        image: NetworkImage(
                          widget.club.profilePic,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          iconSize: 30.0,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Text(
                  widget.club.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  "${widget.club.users.length} User(s) are in this club",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  "${widget.club.skills.length} skills are teached in the club",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Details: ',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Text(
                  widget.club.description,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black38,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black.withOpacity(0.1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Users",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "See all",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        IconButton(
                            padding: EdgeInsets.only(right: 15),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            )),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Column(
                  children: users.map((e) {
                return UserWidget(user: e);
              }).toList()),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black.withOpacity(0.1),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Skills",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "See all",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.arrow_forward_ios, size: 16)),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Column(
                  children: users.map((e) {
                return UserWidget(user: e);
              }).toList()),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: elevatedButton(
                          onPressed: () {}, label: "Join", isOutlined: true)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
