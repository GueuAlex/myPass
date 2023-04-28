import 'package:flutter/material.dart';

import '../config/style.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color = Palette.whiteColor,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0),
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
      ),
    );
  }
}
