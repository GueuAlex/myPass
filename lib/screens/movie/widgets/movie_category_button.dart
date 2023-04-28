import 'package:flutter/material.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/appText.dart';

class MovieCategorieButton extends StatelessWidget {
  const MovieCategorieButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const int seletedIndex = 0;
    final List<String> items = ['All', 'Cartoon', 'Action', 'Comedy'];
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        4,
        (index) => Container(
          height: 35,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          margin: const EdgeInsets.only(right: 5.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: seletedIndex == index
                  ? Palette.yellowColor
                  : Palette.greyColor,
            ),
            color: seletedIndex == index
                ? Palette.yellowColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: AppText(
              text: items[index],
              fontweight: FontWeight.w700,
              color: seletedIndex == index
                  ? Palette.blackColor
                  : Palette.whiteColor,
              //style: ,
            ),
          ),
        ),
      ),
    );
  }
}
