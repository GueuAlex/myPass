import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../providers/all_movies_provider.dart';
import 'movie_card.dart';

class MovieCaroussel extends ConsumerWidget {
  const MovieCaroussel({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(allMoviesProvider);
    return Column(
      children: [
        movies.when(
          data: (movies) {
            return ListView(
              //physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 250,

                    //autoPlay: true,
                    enlargeCenterPage: true,
                    //aspectRatio: -2000,
                    //pageSnapping: true,
                    enlargeFactor: 0.2,
                  ),
                  items: List.generate(
                    movies.length,
                    (index) => MovieCard(movie: movies[index]),
                  ),
                )
              ],
            );
          },
          error: (error, stackTrace) => Text("error : $error"),
          loading: () => SizedBox(
            height: MediaQuery.of(context).size.height / 2.7,
            width: double.infinity,
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        )
      ],
    );
  }
}
