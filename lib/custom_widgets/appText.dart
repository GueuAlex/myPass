import 'package:flutter/material.dart';
import 'package:mypass/config/style.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.color = Palette.blackColor,
    this.fontsize = 12,
    this.fontweight = FontWeight.normal,
    this.textAlign = TextAlign.left,
  });
  final String text;
  final double fontsize;
  final Color color;
  final FontWeight fontweight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: fontsize,
            fontWeight: fontweight,
            color: color,
          ),
    );
  }
}
