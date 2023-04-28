import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/appText.dart';
import '../../../providers/all_sport_provider.dart';
import 'coming_even_container.dart';

class BottomSportList extends ConsumerWidget {
  const BottomSportList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sports = ref.watch(allSportsProvider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppText(
                text: 'Ce mois',
              ),
              AppText(
                  text: 'See all',
                  color: Palette.bleuColor,
                  fontweight: FontWeight.w700),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        sports.when(
          data: (sports) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ComingEvenContainer(sport: sports[index]);
                });
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
      ],
    );
  }
}
