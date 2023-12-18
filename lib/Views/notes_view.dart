import 'package:flutter/material.dart';
import 'package:notes_app/Constant/constant.dart';
import 'package:notes_app/Views/add_note/add_note_bottom_sheet.dart';
import 'package:notes_app/Views/widget/Notes_list_item.dart';

class NotesView extends StatelessWidget {
  static const String routeName = "notes_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notes",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddNoteBottomSheet(),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: NotesListItem(),
          ),
        ],
      ),
    );
  }
}

