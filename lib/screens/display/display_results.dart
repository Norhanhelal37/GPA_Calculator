import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalResult extends StatelessWidget {
  const TotalResult(
      {super.key, required this.totalhours, required this.totalgpa});
  final int totalhours;
  final String totalgpa;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text(
            "Total Hours: $totalhours",
            style: GoogleFonts.caveat(
                color: const Color(0xff03045E),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Text(
            "Total GPA: $totalgpa",
            style: GoogleFonts.caveat(
                color: const Color(0xff03045E),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        
      ],
    );
  }
}
