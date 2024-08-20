import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoursField extends StatefulWidget {
  final List<int> hours;
  const HoursField({super.key, required this.hours});

  @override
  State<HoursField> createState() => _HoursFieldState();
}

class _HoursFieldState extends State<HoursField> {
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
            widget.hours.add(int.parse(value));
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
                      color:   Color(0xff03045E)
                      ))),
      ),
    );
  }
}
