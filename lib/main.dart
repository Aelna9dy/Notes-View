import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Constant/constant.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_note/edit_note_view.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/simple_block_observer.dart';

void main() async{
  Bloc.observer = SimpleBlocObserves();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: NotesView.routeName,
      routes: {
        NotesView.routeName:(context) => NotesView(),
        EditNoteView.routeName:(context) => const EditNoteView(),
      },
    );
  }
}
