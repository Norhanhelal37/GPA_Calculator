import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradesFields extends StatefulWidget {
  const GradesFields({super.key, required this.grades});
  final List<String> grades;

  @override
  State<GradesFields> createState() => _GradesFieldsState();
}

class _GradesFieldsState extends State<GradesFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .07,
      width: MediaQuery.sizeOf(context).width * .2,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        onSubmitted: (value) {
          setState(() {
            widget.grades.add(value);
          });
        },
        style: GoogleFonts.caveat(color: const Color(0xff03045E), fontSize: 20),
        decoration: const InputDecoration(
            filled: true,
            fillColor: Color(0xffF2F7F7),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffF2F7F7))),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(
                      color:  Color(0xff03045E)
                      )
                      )),
      ),
    );
  }
}
