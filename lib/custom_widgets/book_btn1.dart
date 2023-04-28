import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/style.dart';

class BookBtn1 extends StatelessWidget {
  const BookBtn1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      height: 35,
      decoration: BoxDecoration(
        color: Palette.bleuColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Book ticket  ',
                style: TextStyle(
                  color: Palette.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                CupertinoIcons.arrow_right,
                color: Palette.whiteColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
