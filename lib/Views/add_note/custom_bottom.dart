import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mediaQuery.width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: mediaQuery.height * 0.03,
                  width: mediaQuery.width * 0.06,
                  child: const CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text("Add",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
        ),
      ),
    );
  }
}
