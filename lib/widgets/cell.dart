import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Cell extends StatelessWidget {
  const Cell({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.caveat(
        fontSize: 27, fontWeight: FontWeight.bold,
        color: const Color(0xff03045E),
      
      ),
    );
  }
}