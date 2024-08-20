import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpa_calculator/screens/home.dart';
import 'package:gpa_calculator/widgets/motivation.dart';

class ReCalc extends StatelessWidget {
  const ReCalc({super.key, required this.gpa});
  final String gpa;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          motivation(gpa),
          style: GoogleFonts.caveat(
              color: Colors.purpleAccent,
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * .5,
          decoration: BoxDecoration(
              color: const Color(0xff03045E),
              gradient: LinearGradient(colors: [
                const Color(0xff03045E),
                const Color(0xff03045E).withOpacity(.4)
              ]),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (ctx) {
                return const HomePage();
              }));
            },
            child: Text(
              "Re-Calcualte",
              style: GoogleFonts.caveat(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }
}
