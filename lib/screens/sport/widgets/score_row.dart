import 'package:flutter/material.dart';

import '../../../config/style.dart';

class ScoreRow extends StatelessWidget {
  const ScoreRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      width: 60,
      height: 30,
      /* decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Palette.bleuColor.withOpacity(0.1),
      ), */
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '4 ',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Palette.whiteColor,
            ),
          ),
          Container(
            width: 4,
            height: 2,
            color: Palette.whiteColor,
          ),
          const Text(
            ' 1',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Palette.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
