import 'package:commons/commons.dart';
import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final Skill skill;
  const SkillWidget({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${skill.name}: ${skill.rate} / 5"),
          ),
        ]),
      ),
    );
    ;
  }
}
