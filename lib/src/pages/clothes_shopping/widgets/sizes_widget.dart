import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Sizes extends StatelessWidget {
  const Sizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: GoogleFonts.kanit(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            sizeOption("S"),
            sizeOption("M"),
            sizeOption("L", true),
            sizeOption("XL"),
            sizeOption("XXL"),
          ],
        ),
      ],
    );
  }

  Container sizeOption(String size, [bool isSelected = false]) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : null,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Text(
        size,
        style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
      ),
    );
  }
}
