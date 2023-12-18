import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Constant/constant.dart';
import 'package:notes_app/Models/note_model.dart';

part 'add_notes_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  addNote(NoteModel note) async {
    emit(
      AddNoteLoading(),
    );
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(
        AddNoteSuccess(),
      );
      await notesBox.add(note);
    } catch (e) {
      emit(
        AddNoteFailuer(e.toString()),
      );
    }
  }
}
