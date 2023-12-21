import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_model.dart';

import '../../Cubit/add_note_cubits/add_notes_cubit.dart';
import '../widget/custom_text_field.dart';
import 'custom_bottom.dart';

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({super.key});

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<AddNoteFormState> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            width: mediaQuery.width * 0.3,
            height: mediaQuery.height * 0.01,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(
            height: mediaQuery.height * 0.15,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (BuildContext context, state) {
              return CustomBottom(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  setState(() {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value,
                      );

                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  });
                },
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
