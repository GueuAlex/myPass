import 'package:mypass/models/movie_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_repository.g.dart';

@riverpod
MovieRepository movieRepository(MovieRepositoryRef ref) => MovieRepository();

class MovieRepository {
  Future<List<MovieModel>> getMovies() async {
    return Future.delayed(
      const Duration(seconds: 5),
      () {
        return MovieModel.sampleMovie;
      },
    );
  }

  Future<MovieModel> getMovie({required String movieId}) async {
    return Future.delayed(
      const Duration(seconds: 5),
      () {
        return MovieModel.sampleMovie
            .where((movie) => movie.id == movieId)
            .first;
      },
    );
  }
}
