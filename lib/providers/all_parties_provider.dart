import 'package:mypass/models/party_model.dart';
import 'package:mypass/repository/party_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_parties_provider.g.dart';

@riverpod
Future<List<PartyModel>> allParties(AllPartiesRef ref) async {
  final PartyRepository partyRepository = ref.watch(partyRepositoryProvider);
  return PartyRepository().getParties();
}
