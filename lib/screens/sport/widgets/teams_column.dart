import 'package:flutter/material.dart';
import 'package:mypass/models/sport_model.dart';

import '../../../config/style.dart';

class TeamsColumn extends StatelessWidget {
  const TeamsColumn({super.key, required this.team});

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(team.flag), fit: BoxFit.cover),
              color: Palette.bleuColor,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Container(
            padding: const EdgeInsets.only(right: 4.0),
            //color: Colors.red,
            //constraints: const BoxConstraints(maxWidth: 60),
            child: Text(
              team.name,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
