import 'dart:async';

import 'package:mypass/models/hotel_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hotel_repository.g.dart';

@riverpod
HotelRepository hotelRepository(HotelRepositoryRef ref) => HotelRepository();

class HotelRepository {
  Future<List<HotelModel>> getHotels() async {
    return Future.delayed(
      const Duration(seconds: 10),
      () {
        return HotelModel.sampleHotel;
      },
    );
  }

  Future<HotelModel> getHotel({required String hotelID}) async {
    return Future.delayed(
      const Duration(microseconds: 300),
      () {
        return HotelModel.sampleHotel
            .where((hotel) => hotel.id == hotelID)
            .first;
      },
    );
  }
}
