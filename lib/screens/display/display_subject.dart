import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subject extends StatelessWidget {
  const Subject({super.key, required this.subj});
  final String subj;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color(0xffF2F7F7),
        ),
        height: MediaQuery.sizeOf(context).height * .07,
        width: MediaQuery.sizeOf(context).width * .5,
        margin: const EdgeInsets.only(bottom: 20),
        child: Text(
          subj,
          style: GoogleFonts.caveat(
              color: const Color(0xff03045E),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ));
  }
}
