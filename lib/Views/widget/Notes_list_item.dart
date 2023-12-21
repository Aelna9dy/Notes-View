import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Models/note_model.dart';

import 'custom_node_item.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context,state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
            itemBuilder: (context, index) => const CustomNoteItems(),
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
