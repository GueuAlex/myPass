import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/party_model.dart';

part 'party_repository.g.dart';

@riverpod
PartyRepository partyRepository(PartyRepositoryRef ref) => PartyRepository();

class PartyRepository {
  Future<List<PartyModel>> getParties() async {
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        return PartyModel.sampleParty;
      },
    );
  }

  Future<PartyModel> getParty({required String partyId}) async {
    return Future.delayed(
      const Duration(microseconds: 300),
      () {
        return PartyModel.sampleParty
            .where((party) => party.id == partyId)
            .first;
      },
    );
  }
}
