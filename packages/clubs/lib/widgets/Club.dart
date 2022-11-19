import 'package:clubs/views/club_details.dart';
import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

import '../clubs.dart';

class ClubWidget extends StatefulWidget {
  final Club club;
  const ClubWidget({super.key, required this.club});

  @override
  State<ClubWidget> createState() => _ClubWidgetState();
}

class _ClubWidgetState extends State<ClubWidget> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () => push(context, ClubDetails(club: widget.club)),
      child: Card(
        elevation: 0.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: SizedBox(
                height: 60.0,
                width: 60.0,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      widget.club.profilePic,
                      height: 30,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            const SizedBox(
              width: 18.0,
            ),
            SizedBox(
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.club.name,
                    style: theme.textTheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Skills : ${widget.club.skills.map((e) => e.name).join(", ")}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Text(
                    "Users: ${widget.club.users.map((e) => e.intraName).join(", ")}",
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
