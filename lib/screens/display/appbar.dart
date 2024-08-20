import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:const Color.fromARGB(255, 147, 235, 235),
        title: Text(
          "GPA Calculator",
          style: GoogleFonts.caveat(
              color: const Color(0xff03045E),
              fontSize: 40,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize =>const Size.fromHeight(60);
}