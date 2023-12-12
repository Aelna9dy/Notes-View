import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
            "Add",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            )
        ),
      ),
    );
  }
}