import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mypass/custom_widgets/actions_button.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/appText.dart';
import '../../../models/sport_model.dart';

class SportCard extends StatelessWidget {
  const SportCard({super.key, required this.sport});
  final SportModel sport;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //width: 150,
          margin: const EdgeInsets.only(top: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              sport.coverPath,
            ),
          ),
        ),
        Positioned(
          top: 15.0,
          right: 5.0,
          child: ActionsButton(
            isBell: false,
            svg: 'assets/svg/book_mark.svg',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
