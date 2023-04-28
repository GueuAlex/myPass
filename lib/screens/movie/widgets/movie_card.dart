import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/appText.dart';
import '../../../models/movie_model.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 150,
      margin: const EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        /* boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, -2), // déplace l'ombre vers le haut
          ),
          
        ], */
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(movie.coverImage),
          fit: BoxFit.contain,
        ),
      ),
      child: Container(
        // margin: const EdgeInsets.all(8.0),
        //width: 50,
        //height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Palette.blackColor.withOpacity(
            0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.bookmark,
                      color: Palette.yellowColor,
                    ))
              ],
            ),
            Column(
              children: [
                AppText(
                  text: movie.title,
                  color: Palette.whiteColor,
                  fontsize: 20,
                  fontweight: FontWeight.w700,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    movie.gender.length,
                    (index) => AppText(
                      text: '${movie.gender[index]}, ',
                      color: Palette.whiteColor,
                      fontweight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
