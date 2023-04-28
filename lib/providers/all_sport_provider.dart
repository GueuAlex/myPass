import 'package:mypass/models/sport_model.dart';
import 'package:mypass/repository/sport_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_sport_provider.g.dart';

@riverpod
Future<List<SportModel>> allSports(AllSportsRef ref) async {
  final SportRepository sportRepository = ref.watch(sportRepositoryProvider);
  return SportRepository().getSports();
}
