import 'package:flutter/material.dart';
import 'package:mypass/config/style.dart';
import 'package:mypass/custom_widgets/custom_app_bar.dart';
import 'package:mypass/custom_widgets/text_widget.dart';

import 'widgets/hote_nearby.dart';
import 'widgets/hotel_search_card.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.bleuColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              color: Palette.whiteColor,
              margin: EdgeInsets.only(top: size.height * 0.25),
            ),
            //Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //child:
            Column(
              children: const [
                CustomAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextWidget(
                    text: 'Find your best place',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: SearchCard(),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: NearbyHotels(),
                    ),
                  ),
                ),
              ],
            ),
            //)
          ],
        ),
      ),
    );
  }
}
