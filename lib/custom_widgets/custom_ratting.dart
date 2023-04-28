import 'package:flutter/material.dart';

import '../config/style.dart';
import 'appText.dart';

class CustomRatting extends StatelessWidget {
  final double rattingScore;
  final int totalReviews;
  final bool showReview;
  const CustomRatting({
    super.key,
    required this.rattingScore,
    this.showReview = false,
    this.totalReviews = 0,
  });

  @override
  Widget build(BuildContext context) {
    double size = 15.0;
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          Container(
            width: size,
            height: size,
            margin: const EdgeInsets.all(1.0),
            decoration: BoxDecoration(
                color: i <= rattingScore
                    ? const Color.fromARGB(255, 242, 181, 14)
                    : Palette.whiteColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 242, 181, 14),
                  width: 2.0,
                )),
          ),
        const SizedBox(
          width: 10.0,
        ),
        AppText(
          text: rattingScore.toString(),
          fontweight: FontWeight.bold,
          color: Palette.bleuColor,
        ),
        // TODO: show reviews
      ],
    );
  }
}
