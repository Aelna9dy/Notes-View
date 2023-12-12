import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/Views/widget/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static const String routeName = "EditNoteView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Note",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // showDialog(
              //   context: context,
              //   builder: (context) => Message(),
              // );
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            CustomTextField(
              hint: "Title",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
/*
class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width * 5,
      height: mediaQuery.height * 3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        "are you sure you want to edit",
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}
*/
