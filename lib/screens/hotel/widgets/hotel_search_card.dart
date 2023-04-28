import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../config/style.dart';
import 'holel_search_textfield.dart';
import 'hotel_search_button.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController locationController = TextEditingController();
    final TextEditingController dateFromController = TextEditingController();
    final TextEditingController dateToController = TextEditingController();
    dateFromController.text = dateToController.text =
        DateFormat('dd MMM yyyy').format(DateTime.now());
    locationController.text = 'Abidjan';

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, -2), // déplace l'ombre vers le haut
          )
        ],
        color: Palette.whiteColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Palette.greyColor.withOpacity(0.5),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                CupertinoIcons.location_solid,
                color: Palette.bleuColor,
              ),
              const SizedBox(width: 20.0),
              HotelSerchTextField(
                label: 'Where',
                controller: locationController,
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              const Icon(
                Icons.calendar_month_sharp,
                color: Palette.bleuColor,
              ),
              const SizedBox(width: 20.0),
              HotelSerchTextField(
                label: 'From',
                controller: dateFromController,
              ),
              HotelSerchTextField(
                label: 'To',
                controller: dateFromController,
              )
            ],
          ),
          const SizedBox(height: 10.0),
          const HotelSearchButton()
        ],
      ),
    );
  }
}
