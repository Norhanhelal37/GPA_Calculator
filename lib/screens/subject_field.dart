import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubjectField extends StatefulWidget {
  const SubjectField({super.key, required this.data});
  final List<String> data;

  @override
  State<SubjectField> createState() => _SubjectFieldState();
}

class _SubjectFieldState extends State<SubjectField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .07,
      width: MediaQuery.sizeOf(context).width * .5,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        onSubmitted: (value) {
          setState(() {
            widget.data.add(value);
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
                    BorderSide(color: Color(0xff03045E)
                    ))),
      ),
    );
  }
}
