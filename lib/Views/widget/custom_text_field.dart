import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  int maxLines;
  CustomTextField({
    required this.hint,
    this.maxLines=1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.cyanAccent,
          ),
          enabledBorder: buildBorder(),
          border: buildBorder(),
        focusedBorder: buildBorder(Colors.cyanAccent)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
