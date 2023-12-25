import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
   CustomField(
      {super.key, required this.hintText,required this.inputType ,required this.onChanged, this.obsecureText=false});

  final String hintText;
  final Function(String)? onChanged;
 bool? obsecureText;
 TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obsecureText!,
      // validator: (data) {
      //   if (data!.isEmpty) {
      //     return 'field is required';
      //   }
      // },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        // hintStyle: const TextStyle(color: Colors.white),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(16),
            // color: Colors.white,
        ),

        border: OutlineInputBorder(
          borderSide: BorderSide(
            // color: Colors.white,
          ),
            borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
