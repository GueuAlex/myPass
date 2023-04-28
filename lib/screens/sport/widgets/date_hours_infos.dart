import 'package:flutter/material.dart';

import '../../../config/style.dart';

class DateHoursInfos extends StatelessWidget {
  const DateHoursInfos({
    super.key,
    required this.topText,
    required this.bottomText,
    this.isBorder = true,
  });

  final String topText;
  final String bottomText;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        left: BorderSide(
          width: isBorder ? 1 : 0,
          color: isBorder ? Colors.grey : Colors.transparent,
        ),
      )),
      child: Column(
        children: [
          Text(
            topText,
            style: const TextStyle(
              color: Palette.bleuColor,
              fontWeight: FontWeight.w500,
              fontSize: 11,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            bottomText,
            style: const TextStyle(
              //color: Palette.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
