import 'package:flutter/material.dart';
import 'package:practice/notes_app/constrant.dart';

class PureTextField extends StatelessWidget {
  const PureTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(

        hintText: 'Title',
        enabledBorder: ,
        focusedBorder: ,
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(
          color: Colors.white,
        ),
    );
  }
}
