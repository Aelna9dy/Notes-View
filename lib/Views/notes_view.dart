import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  static const String routeName = "notes_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notes",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 10,)
        ],
      ),
      body: Column(),
    );
  }
}
