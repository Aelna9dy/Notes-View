import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/add_note_cubits/add_notes_cubit.dart';
import 'add_note_formKey.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: mediaQuery.viewInsets.bottom,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }

            if (state is AddNoteFailuer) {
              print("failed ${state.errorMessage}");
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(
                child: AddNoteFormState(),
              ),
            );
          },
        ),
      ),
    );
  }
}
