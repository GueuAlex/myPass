import 'package:flutter/material.dart';

import '../../../config/style.dart';
import '../../../custom_widgets/text_widget.dart';

class HotelSerchTextField extends StatelessWidget {
  const HotelSerchTextField({
    required this.controller,
    required this.label,
    super.key,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          label: TextWidget(
            text: label,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            color: Palette.bleuColor,
          ),
        ),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
