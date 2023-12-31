
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Models/note_model.dart';

import '../../Constant/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super(NotesInitial());


  List<NoteModel>? notes;
  fetchAllNotes() {

      var notesBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notes = notesBox.values.toList();
  }
}