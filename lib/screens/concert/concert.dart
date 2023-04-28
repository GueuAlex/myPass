import 'package:flutter/material.dart';
import 'package:mypass/config/style.dart';
import 'package:mypass/custom_widgets/custom_app_bar.dart';

import '../../custom_widgets/text_widget.dart';

class ConcertScreen extends StatelessWidget {
  const ConcertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.bleuColor,
      body: SafeArea(
        child: Stack(
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
                    text: 'Vibrez au rythme de la musique',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
