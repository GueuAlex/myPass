import 'package:flutter/material.dart';

import '../../../config/style.dart';

class HotelSearchButton extends StatelessWidget {
  const HotelSearchButton({
    this.onPressed,
    super.key,
  });
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Palette.bleuColor),
          elevation: MaterialStateProperty.all(0.0),
          minimumSize: MaterialStateProperty.all(
            const Size(200, 45),
          )),
      child: const Text(
        'Search',
        style: TextStyle(color: Palette.whiteColor),
      ),
    );
  }
}
