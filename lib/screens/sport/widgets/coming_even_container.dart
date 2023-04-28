import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mypass/custom_widgets/appText.dart';
import 'package:mypass/models/sport_model.dart';
import 'package:mypass/providers/all_sport_provider.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/book_btn1.dart';
import 'date_hours_infos.dart';
import 'teams_column.dart';

class ComingEvenContainer extends StatelessWidget {
  final SportModel sport;
  const ComingEvenContainer({
    required this.sport,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.green,
          decoration: BoxDecoration(
            color: Palette.bleuColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: const EdgeInsets.all(
            8.0,
          ),
          margin: const EdgeInsets.only(
            right: 4.0,
            left: 4.0,
            bottom: 5.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      child: Row(
                        children: [
                          TeamsColumn(team: sport.home),
                          const AppText(
                            text: 'Vs',
                            color: Palette.bleuColor,
                            fontweight: FontWeight.w500,
                          ),
                          /////////////////////
                          TeamsColumn(
                            team: sport.away,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: DateHoursInfos(
                      topText: 'Date',
                      bottomText:
                          DateFormat('dd/MM/yyyy').format(sport.playDay),
                    ),
                  ),
                  Expanded(
                    child: DateHoursInfos(
                      topText: 'Heure',
                      bottomText: sport.hour,
                    ),
                  ),
                ],
              ),
              //////////////////// 2 em Row ////////////////////
              ///
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: const [
                  Expanded(
                    child: BookBtn1(),
                  ),
                  Expanded(
                    child: DateHoursInfos(
                      isBorder: false,
                      topText: 'Valable',
                      bottomText: '400 tickets',
                    ),
                  ),
                  Expanded(
                    child: DateHoursInfos(
                      topText: 'Prix',
                      bottomText: '15 000 FCFA',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
