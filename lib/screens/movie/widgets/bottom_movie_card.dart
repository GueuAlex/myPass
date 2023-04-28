import 'package:flutter/material.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/appText.dart';
import '../../../custom_widgets/custom_ratting.dart';
import '../../../models/movie_model.dart';

class BottomMovieCard extends StatelessWidget {
  final MovieModel movie;
  const BottomMovieCard({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Palette.greyColor,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                movie.coverImage,
                height: 120,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: movie.title,
                  fontsize: 18,
                  fontweight: FontWeight.w600,
                  color: Palette.bleuColor,
                ),
                CustomRatting(rattingScore: movie.ratingScore),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: AppText(text: '${movie.sinopcy.substring(0, 100)}...'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
