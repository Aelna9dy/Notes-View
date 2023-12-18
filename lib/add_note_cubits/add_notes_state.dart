part of 'add_notes.dart';

@immutable
abstract class AddNoteState{}

class AddNoteInitial extends AddNoteState{}

class AddNoteLoading extends AddNoteState{}

class AddNoteSuccess extends AddNoteState{}

class AddNoteFailuer extends AddNoteState{
  final String errorMessage;

  AddNoteFailuer(this.errorMessage);
}
