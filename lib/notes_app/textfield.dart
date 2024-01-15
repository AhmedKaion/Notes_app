import 'package:flutter/material.dart';
import 'package:practice/notes_app/constrant.dart';

class PureTextField extends StatelessWidget {
  const PureTextField({super.key, required this.hint,  this.maxLines =1, this.onSaved});
final String hint;
final int maxLines;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value){
        if(value?.isEmpty?? true){
          return 'field is required';
        }else {
          return null;
        }
      },
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
