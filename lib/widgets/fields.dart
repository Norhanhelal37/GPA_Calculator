import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Fields extends StatelessWidget {
  const Fields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 180,
          
          margin:const EdgeInsets.only(left:10,right: 20),
          child: TextField(
             style:GoogleFonts.caveat(
              color: const Color(0xff03045E),
              
              fontSize: 20

            ),
            decoration:const InputDecoration(
              filled: true,
              fillColor: Color(0xffF2F7F7),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffF2F7F7)
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 252, 248, 248)
                )
              )
            ),
          ),
        ),
          
    
         Container(
          height: 40,
          width: 95,
          
          margin:const EdgeInsets.only(left:20,right: 20),
          child: TextField(
            style:GoogleFonts.caveat(
              color: const Color(0xff03045E),
             
              fontSize: 20

            )
            ,
            decoration:const InputDecoration(
              
              filled: true,
              fillColor: Color(0xffF2F7F7),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffF2F7F7)
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 252, 248, 248)
                )
              )
            ),
          ),
        ),
    
        Container(
          height: 40,
          width: 95,
          
          margin:const EdgeInsets.only(left:50),
          child: TextField(
          
             style:GoogleFonts.caveat(
              color: const Color(0xff03045E),
              // fontWeight: FontWeight.bold,
              fontSize: 20

            ),
            decoration:const InputDecoration(
              filled: true,
              fillColor: Color(0xffF2F7F7),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffF2F7F7)
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:  Color(0xff03045E),
                )
              )
            ),
          ),
        )
      ],
    );
  }
}
