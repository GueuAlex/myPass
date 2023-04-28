import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/appText.dart';
import '../../../providers/all_hotels_provider.dart';
import 'hotel_card.dart';

class NearbyHotels extends ConsumerWidget {
  const NearbyHotels({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppText(
              text: 'Nearby hotels',
            ),
            AppText(
                text: 'See all',
                color: Palette.bleuColor,
                fontweight: FontWeight.w700),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        hotels.when(
          data: (hotels) {
            return ListView.builder(
              //physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                return HotelCard(hotel: hotels[index]);
              },
            );
          },
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
