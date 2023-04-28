import 'package:flutter/material.dart';
import 'package:mypass/models/sport_model.dart';

import '../../../config/style.dart';
import 'teams_row.dart';

class LiveEvenContainer extends StatelessWidget {
  const LiveEvenContainer({
    super.key,
    required this.even,
    required this.rencontre1,
  });

  final SportEven even;
  final SportModel rencontre1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8.0,
        left: 5.0,
        right: 5.0,
      ),
      width: MediaQuery.of(context).size.width / 1.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Palette.blackColor.withOpacity(0.7),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.sports_soccer,
                color: Palette.greyColor,
                size: 16,
              ),
              const SizedBox(
                width: 2,
              ),
              FittedBox(
                child: Text(
                  even.evenName,
                  style: const TextStyle(
                    height: 2.2,
                    //decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Palette.greyColor,
                  ),
                ),
              )
            ],
          ),
          const Text(
            "82'",
            style: TextStyle(
              color: Palette.greyColor,
              fontWeight: FontWeight.w400,
              fontSize: 11,
            ),
          ),

          TeamsRow(
            rencontre1: rencontre1,
          ),
          // LiveViewButton()
        ],
      ),
    );
  }
}
