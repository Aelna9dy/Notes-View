import 'package:flutter/material.dart';
import 'package:notes_app/Views/edit_note_view.dart';
import 'package:notes_app/Views/notes_view.dart';

void main() {
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
