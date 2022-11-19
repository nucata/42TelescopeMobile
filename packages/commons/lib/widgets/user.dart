import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  final UserModel user;
  const UserWidget({super.key, required this.user});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ListTile(
      leading: CircleAvatar(
        child: Image(
          image: NetworkImage(widget.user.profilePic),
        ),
      ),
      title: Text(
        widget.user.intraName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(widget.user.campusId, style: theme.textTheme.bodyMedium),
    );
  }
}
