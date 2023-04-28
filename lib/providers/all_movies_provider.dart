import 'package:mypass/models/movie_model.dart';
import 'package:mypass/repository/movie_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_movies_provider.g.dart';

@riverpod
Future<List<MovieModel>> allMovies(AllMoviesRef ref) async {
  final MovieRepository movieRepository = ref.watch(movieRepositoryProvider);
  return MovieRepository().getMovies();
}
