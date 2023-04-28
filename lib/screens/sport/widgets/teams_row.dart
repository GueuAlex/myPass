import 'package:flutter/material.dart';
import 'package:mypass/models/sport_model.dart';

import '../../../config/style.dart';
import 'score_row.dart';

class TeamsRow extends StatelessWidget {
  const TeamsRow({
    super.key,
    required this.rencontre1,
  });

  final SportModel rencontre1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(
        right: 3.0,
        left: 3.0,
      ),
      width: double.infinity,
      //color: Colors.amber,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(right: 4.0),
              //color: Colors.red,
              constraints: const BoxConstraints(maxWidth: 60),
              child: Text(
                rencontre1.home.name,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Palette.whiteColor,
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(rencontre1.home.flag), fit: BoxFit.cover),
              color: Palette.bleuColor,
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: ScoreRow(),
          ),
          Container(
            width: 40,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(rencontre1.away.flag), fit: BoxFit.cover),
              color: Palette.bleuColor,
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 4.0),
              //color: Colors.red,
              constraints: const BoxConstraints(maxWidth: 60),
              child: Text(
                rencontre1.away.name,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Palette.whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
