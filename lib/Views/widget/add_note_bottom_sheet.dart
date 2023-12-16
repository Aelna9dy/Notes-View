import 'package:flutter/material.dart';

import 'custom_bottom.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: mediaQuery.width*0.3,
              height: mediaQuery.height*0.01,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
            SizedBox(
              height: mediaQuery.height*0.15,
            ),
            CustomBottom(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}


