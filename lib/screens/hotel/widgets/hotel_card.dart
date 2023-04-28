import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/appText.dart';
import '../../../custom_widgets/custom_ratting.dart';
import '../../../models/hotel_model.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return //InkWell(
        //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context){
        // return const GoogleMapScreen();
        // })),
        //child:
        Container(
      margin: const EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Palette.greyColor,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              child: Image.asset(
                hotel.thumbnailPath,
                fit: BoxFit.cover,
                height: 150,
                width: 150,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: hotel.title,
                    color: Palette.bleuColor,
                    fontweight: FontWeight.bold,
                    fontsize: 18.0,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.location_solid,
                        color: Palette.bleuColor,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      AppText(
                        text: hotel.location,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  CustomRatting(
                    rattingScore: hotel.ratingScore,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$${hotel.price}',
                          style: const TextStyle(
                            color: Palette.bleuColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const TextSpan(
                          text: ' /night',
                          style: TextStyle(
                            color: Palette.blackColor,
                            fontWeight: FontWeight.bold,
                            //fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    //);
  }
}
