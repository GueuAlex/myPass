import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../custom_widgets/appText.dart';
import '../../../providers/all_movies_provider.dart';
import 'bottom_movie_card.dart';

class BottomMoviesList extends ConsumerWidget {
  const BottomMoviesList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(allMoviesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: AppText(text: 'Au programme'),
        ),
        movies.when(
          data: (movies) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              //scrollDirection: Axis.vertical,
              itemCount: movies.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 4.0, left: 8.0, right: 8.0),
                  child: BottomMovieCard(movie: movies[index]),
                );
              }),
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
