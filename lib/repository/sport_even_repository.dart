import 'package:mypass/models/sport_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sport_even_repository.g.dart';

@riverpod
SportEvenRepository sportEvenRepository(SportEvenRepositoryRef ref) =>
    SportEvenRepository();

class SportEvenRepository {
  Future<List<SportEven>> getSportEvens() async {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        return SportEven.sampleSportEven;
      },
    );
  }

  Future<SportEven> getSportEven({required String sportEvenId}) async {
    return Future.delayed(
      const Duration(microseconds: 300),
      () {
        return SportEven.sampleSportEven
            .where((sportEven) => sportEven.id == sportEvenId)
            .first;
      },
    );
  }
}
