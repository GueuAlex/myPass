import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/style.dart';

class ActionsButton extends StatelessWidget {
  const ActionsButton({
    super.key,
    required this.isBell,
    required this.svg,
    required this.onTap,
    this.heigth = 30,
    this.width = 30,
  });
  final String svg;
  final bool isBell;
  final VoidCallback onTap;
  final double width;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(6.0),
            width: width,
            height: heigth,
            decoration: BoxDecoration(
              color: Palette.whiteColor.withOpacity(1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(
              svg,
              color: Palette.bleuColor,
            ),
          ),
          isBell
              ? Positioned(
                  child: Container(
                  height: 6,
                  width: 6,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ))
              : const SizedBox(
                  height: 6,
                  width: 6,
                )
        ],
      ),
    );
  }
}
