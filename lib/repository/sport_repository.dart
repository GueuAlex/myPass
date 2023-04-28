import 'package:mypass/models/sport_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sport_repository.g.dart';

@riverpod
SportRepository sportRepository(SportRepositoryRef ref) => SportRepository();

class SportRepository {
  Future<List<SportModel>> getSports() async {
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        return SportModel.sampleSport;
      },
    );
  }

  Future<SportModel> getSport({required String sportId}) async {
    return Future.delayed(
      const Duration(microseconds: 300),
      () {
        return SportModel.sampleSport
            .where((sport) => sport.id == sportId)
            .first;
      },
    );
  }
}
