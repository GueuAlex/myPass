import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../providers/all_sport_provider.dart';
import 'sport_card.dart';

class SportEvenCarousel extends ConsumerWidget {
  const SportEvenCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sports = ref.watch(allSportsProvider);
    return Container(
      child: sports.when(
        data: (sports) {
          return ListView(
            //physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,

                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  //autoPlay: true,
                  enlargeCenterPage: true,
                  //aspectRatio: -2000,
                  //pageSnapping: true,
                  enlargeFactor: 0.2,
                ),
                items: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 2.0, left: 2.0),
                    child: SportCard(sport: sports[index]),
                  ),
                ),
              )
            ],
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
      ),
    );
  }
}
