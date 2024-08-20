import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpa_calculator/screens/results.dart';

class MyButtom extends StatefulWidget {
  const MyButtom({
    super.key,
    required this.grades,
    required this.deg,
    required this.subjects,
    required this.hours,
    required this.allhours,
    required this.badgood, required this.badInfo,
  });
  final double grades;
  final List<String> deg;
  final List<String> subjects;
  final int hours;
  final List<int> allhours;
  final void Function(bool intem) badgood;
  final bool badInfo;

  @override
  State<MyButtom> createState() => _MyButtomState();
}

class _MyButtomState extends State<MyButtom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .4,
      decoration: BoxDecoration(
          color: const Color(0xff03045E),
          gradient: LinearGradient(colors: [
            const Color(0xff03045E),
            const Color(0xff03045E).withOpacity(.4)
          ]),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: TextButton(
        onPressed: () {
          if (widget.subjects.isEmpty ||
              widget.allhours.isEmpty ||
              widget.deg.isEmpty) {
            widget.badgood(widget.badInfo);
          } else {
            widget.badgood(widget.badInfo);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Results(
                grades: widget.grades,
                deg: widget.deg,
                subjects: widget.subjects,
                hours: widget.hours,
                allhours: widget.allhours,
              );
            }));
          }
        },
        child: Text(
          "Calcualte",
          style: GoogleFonts.caveat(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 30),
        ),
      ),
    );
  }
}
