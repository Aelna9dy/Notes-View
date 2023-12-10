import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNoteItems extends StatelessWidget {
  const CustomNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Flutter tips",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ],
              ),
              Text(
                "Build your career with tharwat samy",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          Text(
            "May 21,2023",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
/*ListTile(
            title: Text(
              "Flutter tips",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Build your career with tharwat samy",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black45,
              ),
            ),


          ),*/
