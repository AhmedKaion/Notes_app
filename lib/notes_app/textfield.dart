import 'package:flutter/material.dart';
import 'package:practice/notes_app/constrant.dart';

class PureTextField extends StatelessWidget {
  const PureTextField({super.key, required this.hint,  this.maxLines =1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder:buildBorder(),
        focusedBorder:buildBorder(kPrimaryColor),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
