import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../edit_note_view.dart';

class CustomNoteItems extends StatelessWidget {
  const CustomNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.popAndPushNamed(context, EditNoteView.routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter tips",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Build your career with tharwat samy",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.black45,
                ),
              ),
              trailing: const Icon(
                Icons.delete,
                size: 30,
                color: Colors.black,
              ),
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
      ),
    );
  }
}