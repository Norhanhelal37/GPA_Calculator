import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Degree extends StatelessWidget {
  const Degree({super.key, required this.degree});
  final String degree;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .07,
      width: MediaQuery.sizeOf(context).width * .2,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(color: Color(0xffF2F7F7)),
      child: Text(
        degree,
        style: GoogleFonts.caveat(
            color: const Color(0xff03045E),
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
