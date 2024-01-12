import 'package:flutter/material.dart';
import 'package:practice/notes_app/textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
           PureTextField(),
          ],

      ),
    );
  }
}
