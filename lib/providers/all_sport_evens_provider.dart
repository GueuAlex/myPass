import 'package:mypass/models/sport_model.dart';
import 'package:mypass/repository/sport_even_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_sport_evens_provider.g.dart';

@riverpod
Future<List<SportEven>> allSportEvens(AllSportEvensRef ref) async {
  final SportEvenRepository sportEvenRepository =
      ref.watch(sportEvenRepositoryProvider);
  return SportEvenRepository().getSportEvens();
}
