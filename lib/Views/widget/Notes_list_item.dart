import 'package:flutter/material.dart';

import 'custom_node_item.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
        itemBuilder: (context, index) => CustomNoteItems(),
        // itemCount: 5,
      ),
    );
  }
}
