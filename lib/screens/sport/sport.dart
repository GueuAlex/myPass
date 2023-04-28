//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mypass/config/style.dart';
//import 'package:mypass/models/sport_model.dart';
//import 'package:mypass/providers/all_sport_provider.dart';

//import '../../custom_widgets/appText.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../custom_widgets/text_widget.dart';
//import 'widgets/coming_even_container.dart';
import 'widgets/sport_bottom_list.dart';
import 'widgets/sport_even_carousel.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.bleuColor,
      body: SafeArea(
        child: Stack(
          //fit: StackFit.passthrough,
          children: [
            Container(
              height: double.infinity,
              color: Palette.whiteColor,
              margin: EdgeInsets.only(top: size.height * 0.25),
            ),
            Column(
              children: const [
                CustomAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextWidget(
                    text: 'Souyez au coeur de l\'action',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SportEvenCarousel(),
                SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: BottomSportList(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
