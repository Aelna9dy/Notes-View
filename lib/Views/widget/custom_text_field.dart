import 'package:flutter/material.dart';
import 'package:notes_app/Constant/constant.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  const CustomTextField({
    super.key,
    this.onSaved,
    required this.hint,
    this.maxLines=1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true)
          {
            return "field ts required";
          }else{
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: primaryColor,
          ),
          enabledBorder: buildBorder(),
          border: buildBorder(),
        focusedBorder: buildBorder(primaryColor)
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
