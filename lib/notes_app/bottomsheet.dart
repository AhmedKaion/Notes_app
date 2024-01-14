import 'package:flutter/material.dart';
import 'package:practice/notes_app/custom_button.dart';
import 'package:practice/notes_app/textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
             PureTextField(hint: 'Title',),
              SizedBox(height:16 ,),
              PureTextField(hint: 'Content',maxLines: 5,),
              SizedBox(height:70 ,),
              CustomButton(),
              SizedBox(height:16 ,),
            ],

        ),
      ),
    );
  }
}
